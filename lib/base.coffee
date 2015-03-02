
{EventEmitter} = require('events')
buffering      = require('node-buffering')
sanitiser      = new (require('./sanitiser'))()
socket         = require('./socket')

module.exports = class ATCmdBase extends EventEmitter

  responses = 0
  nExpectedResponses = 0

  commandBuffer = new buffering().on('flush', (data) ->
    socket.write(data[0])
    commandBuffer.pause()
  )

  constructor: (
    @bganHost,
    @bganPort,
    @bganPassword,
    @queue = [],
    @stripOKERROR = false,
    @dataListener,
    @finishedListener
  ) ->
    @responses = []

    @on('data', @dataListener)
    @on('finished', @finishedListener)

    nExpectedResponses = @queue.length

    socket.on('data', (data) =>

      # this is freaking ugly, but it's the only
      # sane way i can think of to tally the AT
      # command OK/ERROR responses (which will
      # let us know when we've got all the
      # messages back)
      sanitiser
        .setChunk(data.toString())
        .stripCRLF()
        .stripCommas()
        .insertBreaks()
        .split()
        .trim()
        .value()
        .forEach((response) ->
          if (response is 'OK' or response is 'ERROR')
            responses++
        )

      sanitiser.setChunk(data.toString())

      if @stripOKERROR
        @responses = @responses.concat(
          sanitiser
            .stripERROR()
            .stripOK()
            .stripCRLF()
            .stripCommas()
            .insertBreaks()
            .split()
            .trim()
            .deleteOKERROR()
            .value()
        )
      else
        @responses = @responses.concat(
          sanitiser
            .stripCRLF()
            .stripCommas()
            .insertBreaks()
            .split()
            .trim()
            .value()
        )

      if @responses.length
        @emit(
          'data',
          @responses[@responses.length - 1],
          data.toString()
        )

      if @queue.length
        commandBuffer.resume()
        commandBuffer.enqueue(@queue.splice(0, 1))
        commandBuffer.flush()

      if responses is nExpectedResponses
        @emit('finished', @responses)
        socket.emit('end')
    ).connect(@bganPort, @bganHost, =>
      console.log('ESTABLISHED CONNECTION', socket.address())
      commandBuffer.enqueue(@queue.splice(0, 1))
      commandBuffer.flush()
    )
