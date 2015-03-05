assert = require('assert')
chai = require('chai')
{expect} = chai
sinon = require('sinon')
chai.use(require('sinon-chai'))

Commander = require('../lib/commander')

describe 'commander', ->

  describe 'constructor', ->

    it 'should throw an error if no password is given', ->

      newCmder = -> new Commander()
      expect(newCmder).to.throw()

    it 'should set password to the given value', ->

      expect(new Commander('abc')).to.have.property('password').that.equals('abc')

    it 'should set lineEnding to \\r\\n if not given', ->

      expect(new Commander('abc')).to.have.property('lineEnding').that.equals('\r\n')

    it 'should set lineEnding to the given value', ->

      expect(new Commander('abc', '123')).to.have.property('lineEnding').that.equals('123')

  describe 'AT commands', ->

    it 'should contain the lineEnding in every command output', ->

      _ = new Commander('abc')

      Object.keys(_).forEach (property, idx, arr) ->

        if typeof _[property] is "function"

          expect(_[property](1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
