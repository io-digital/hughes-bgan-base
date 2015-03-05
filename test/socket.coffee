assert = require('assert')
chai = require('chai')
{expect} = chai
sinon = require('sinon')
chai.use(require('sinon-chai'))

socket = require('../lib/socket')

destroySpy = sinon.spy(socket, '_destroy')

describe 'socket', ->

  describe '#setTimeout', ->

    it 'should be set to 30000', ->

      expect(socket._idleTimeout).to.equal(30000)

  describe '#destruct', ->

    afterEach ->
      destroySpy.reset()

    it 'should call #destruct on timeout', ->

      socket.emit('timeout')
      expect(destroySpy).to.have.been.called

    it 'should call #destruct on end', ->

      socket.emit('end')
      expect(destroySpy).to.have.been.called

    it 'should call #destruct on error', ->

      socket.emit('error')
      expect(destroySpy).to.have.been.called
