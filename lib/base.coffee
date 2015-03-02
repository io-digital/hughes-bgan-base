
{EventEmitter} = require('events')
buffering      = require('node-buffering')
sanitiser      = new (require('./sanitiser'))()
socket         = require('./socket')

module.exports = class ATCmdBase extends EventEmitter

  responses = 0
  nExpectedResponses = 0

  commandBuffer = new buffering().on(
    'flush',
    ((data) ->
      socket.write(data[0])
      @pause()
    ).bind(commandBuffer)
  )

  constructor: (opts) ->

    {
      @stripResponses,
      @password,
      @commands,
      @connect,
      @onData,
      @onEnd,
      @host,
      @port
    } = opts

    unless @host and @port and Array.isArray(@commands)
      throw new Error('A socket address and command queue are required.')

    nExpectedResponses = @commands.length ? 0

    @queue = @commands[..]
    @responses = []

    if typeof @onData is 'function'
      @on('data', @onData)

    if typeof @onEnd is 'function'
      @on('end', @onEnd)

    socket.on('data', (data) =>

      # NOTE: TODO.md item 1
      # this is freaking ugly, but it's the only
      # sane way i can think of to tally the AT
      # command OK/ERROR responses (which will
      # let us know when we've got all the
      # messages back)
      #
      # once the has been transformed, it ought
      # to be possible to do something like:
      #
      # sanitiser = new sanitiser(data.toString())
      #
      # sanitiser.parsed.forEach((response) =>
      #   if (response is 'OK' or response is 'ERROR')
      #     responses++
      #   @responses.push(response)
      # )
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

    if @autoConnect
      process.nextTick( =>
        @connect()
      )

  connect: =>
    socket.connect(@port, @host, =>
      process.emit('log:info', 'established connection', socket.address())
      commandBuffer.enqueue(@queue.splice(0, 1))
      commandBuffer.flush()
    )
