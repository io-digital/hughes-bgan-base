
{EventEmitter} = require('events')
Buffering      = require('node-buffering')
Parser         = require('./parser')

module.exports = class Base extends EventEmitter

  constructor: (opts) ->

    { @stripResponses,
      @autoConnect,
      @commands,
      @onData,
      @onEnd,
      @host,
      @port } = opts

    unless opts and @host and @port and Array.isArray(@commands)
      throw new Error('A socket address and command queue are required.')

    @socket = require('./socket')
    @commandBuffer = new Buffering().on('flush', (data) =>
      @socket.write(data[0])
      @commandBuffer.pause()
    )

    @nExpectedResponses = @commands.length ? 0
    @controlResponses = 0

    @queue = @commands[..]
    @responses = []

    @on('data', @onData) if typeof @onData is 'function'
    @on('end', @onEnd) if typeof @onEnd is 'function'

    @socket.on('data', (data) =>

      strung = data.toString()
      parser = new Parser(strung)

      for response in parser.parsed
        @controlResponses += 1 if response in ['OK', 'ERROR']

      if @stripResponses
        @responses = @responses.concat(parser.stripped)
      else
        @responses = @responses.concat(parser.parsed)

      if @responses.length
        @emit('data', @responses[@responses.length - 1], strung)

      if @queue.length
        @commandBuffer.resume()
        @commandBuffer.enqueue(@queue.splice(0, 1))
        @commandBuffer.flush()

      if @controlResponses is @nExpectedResponses
        @emit('end', @responses)
        @socket.emit('end')
    )

    process.nextTick( => @connect()) if @autoConnect

  connect: =>
    @socket.connect(@port, @host, =>
      @commandBuffer.enqueue(@queue.splice(0, 1))
      @commandBuffer.flush()
    )

