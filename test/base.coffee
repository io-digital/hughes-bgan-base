assert = require('assert')
chai = require('chai')
{expect} = chai
sinon = require('sinon')
chai.use(require('sinon-chai'))

Base = require('../lib/base')

describe 'Base', ->

  describe 'constructor', ->

    it 'should construct without throwing', ->

      newBase = -> new Base(host: '123.123.123.132', port: 9000, commands: ["abc"])
      expect(newBase).to.not.throw()

    it 'should throw an error if options object is missing', ->

      newBase = -> new Base()
      expect(newBase).to.throw()

    it 'should throw an error if host is missing', ->

      newBase = -> new Base(port: 9000, commands: [])
      expect(newBase).to.throw()

    it 'should throw an error if port is missing', ->

      newBase = -> new Base(host: '123.123.123.123', commands: [])
      expect(newBase).to.throw()

    it 'should throw an error if commands is missing', ->

      newBase = -> new Base(host: '123.123.123.123', port: 2134)
      expect(newBase).to.throw()

    it 'should throw an error if host, port and commands is missing', ->

      newBase = -> new Base({})
      expect(newBase).to.throw()

    it 'should assign all valid construction options to instance variables', ->

      base = new Base({
        stripResponses: true,
        autoConnect: false,
        commands: [],
        onData: ->,
        onEnd: ->,
        host: '123.123.123.123',
        port: 1234
      })

      expect(base).to.contain.keys([
        'stripResponses',
        'autoConnect',
        'commands',
        'onData',
        'onEnd',
        'host',
        'port'
      ])

  describe '#commandBuffer', ->

    it 'should be unpaused at construction time', ->
      base = new Base(host: '123.123.123.132', port: 9000, commands: ["abc"])
      expect(base.commandBuffer._paused).to.equal(false)

  describe '#socket', ->

    describe '#on data', ->

      it 'should modify the responses property of base when a data event is emitted by socket', ->
        base = new Base(host: '123.123.123.132', port: 9000, commands: ['abc', '123', '456'])
        base.socket.emit('data', new Buffer(0x4f, 0x12f))
        expect(base.responses.length).to.not.equal(0)

      it 'should cause the base class instance to emit a data event', ->

        base = new Base(host: '123.123.123.132', port: 9000, commands: ['abc', '123', '456'])
        baseDataEmitSpy = sinon.spy(base, 'emit')

        process.nextTick ->
          base.socket.emit('data', new Buffer(0x4f, 0x12f))
          expect(baseDataEmitSpy).to.have.been.called

      it 'should cause the base class instance property commandBuffer resume itself, enqueue another command, flush the command and then pause itself', ->

        base = new Base(host: '123.123.123.132', port: 9000, commands: ['abc', '123', '456'])

        commandBufferResumeSpy = sinon.spy(base.commandBuffer, 'resume')
        commandBufferEnqueueSpy = sinon.spy(base.commandBuffer, 'enqueue')
        commandBufferFlushSpy = sinon.spy(base.commandBuffer, 'flush')
        commandBufferPauseSpy = sinon.spy(base.commandBuffer, 'pause')

        process.nextTick ->
          base.socket.emit('data', new Buffer(0x4f, 0x12f))
          expect(commandBufferResumeSpy).to.have.been.called
          expect(commandBufferEnqueueSpy).to.have.been.called
          expect(commandBufferFlushSpy).to.have.been.called
          expect(commandBufferPauseSpy).to.have.been.called

      it 'should cause the base class instance property socket to write something when the commandBuffer is flushed', ->

        base = new Base(host: '123.123.123.132', port: 9000, commands: ['abc', '123', '456'])

        socketWriteSpy = sinon.spy(base.socket, 'write')

        process.nextTick ->
          base.socket.emit('data', new Buffer(0x4f, 0x12f))
          expect(socketWriteSpy).to.have.been.called

  describe '#connect', ->

    it 'should call base.socket.connect on base.connect', ->

      base = new Base({
        stripResponses: true,
        autoConnect: false,
        commands: [],
        onData: ->,
        onEnd: ->,
        host: '123.123.123.123',
        port: 1234
      })

      baseSocketConnectSpy = sinon.spy(base.socket, 'connect')
      try
        base.connect()
      catch err
        # it's *going* to throw
        # just ignore it
        expect(baseSocketConnectSpy).to.have.been.called
