
{EventEmitter} = require('events')
buffering      = require('node-buffering')
Sanitiser      = require('./sanitiser')
socket         = require('./socket')

module.exports = class ATCmdBase extends EventEmitter

  responses = 0
  nExpectedResponses = 0

  commandBuffer = new buffering().on(
    'flush',
    (data) ->
      socket.write(data[0])
      commandBuffer.pause()
  )

  constructor: (opts) ->

    {
      @stripResponses,
      @autoConnect,
      @password,
      @commands,
      @onData,
      @onEnd,
      @host,
      @port
    } = opts

    unless opts and @host and @port and Array.isArray(@commands)
      throw new Error('A socket address and command queue are required.')

    nExpectedResponses = @commands.length ? 0

    @queue = @commands[..]
    @responses = []

    if typeof @onData is 'function'
      @on('data', @onData)

    if typeof @onEnd is 'function'
      @on('end', @onEnd)

    socket.on('data', (data) =>

      strung = data.toString()
      sanitiser = new Sanitiser(strung)

      for response in sanitiser.parsed
        if (response is 'OK' or response is 'ERROR')
          responses++

      if @stripResponses
        @responses = @responses.concat(sanitiser.stripped)
      else
        @responses = @responses.concat(sanitiser.parsed)

      if @responses.length
        @emit('data', @responses[@responses.length - 1], strung)

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
      commandBuffer.enqueue(@queue.splice(0, 1))
      commandBuffer.flush()
    )
