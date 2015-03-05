assert = require('assert')
chai = require('chai')
{expect} = chai
sinon = require('sinon')
chai.use(require('sinon-chai'))

socket = require('../lib/socket')

it 'socket constructor should set the idle timeout', ->

  expect(socket._idleTimeout).to.be.gt(-1)

destroySpy = sinon.spy(socket, '_destroy')

afterEach ->
  destroySpy.reset()

it 'socket should call #destroy on timeout', ->

  socket.emit('timeout')
  expect(destroySpy).to.have.been.called

it 'socket should call #destroy on end', ->

  socket.emit('end')
  expect(destroySpy).to.have.been.called

it 'socket should call #destroy on error', ->

  socket.emit('error')
  expect(destroySpy).to.have.been.called
