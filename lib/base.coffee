
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

  constructor: (opts) ->

    { @host,
      @port,
      @password,
      @queue,
      @stripResponses,
      @onData,
      @onEnd } = opts

    unless @host and @port and @queue
      throw new Error('A socket address and command queue are required.')

    nExpectedResponses = @queue.length ? 0
    @responses = []

    @on('data', @onData)
    @on('end', @onEnd)

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

      if @stripResponses
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
        @emit('end', @responses)
        socket.emit('end')
    )

    process.nextTick( =>
      socket.connect(@port, @host, =>
        console.log('ESTABLISHED CONNECTION', socket.address())
        commandBuffer.enqueue(@queue.splice(0, 1))
        commandBuffer.flush()
      )
    )
