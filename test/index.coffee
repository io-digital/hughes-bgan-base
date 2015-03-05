assert = require('assert')
chai = require('chai')
{expect} = chai
sinon = require('sinon')
chai.use(require('sinon-chai'))

index = require('../lib')

describe 'library', ->

  it 'should export commander, socket, parser and base', ->

    expect(index).to.contain.keys(['commander', 'socket', 'parser', 'base'])
