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

    _ = new Commander('123')
    # it 'blah', (done) ->
    #   @timeout(60000)
    #   _ = new Commander('abc')
    #   fs = require('fs')
    #   written = fs.createWriteStream('./testing')
    #   Object.keys(_).forEach (property, idx, arr) ->
    #     written.write(
    #       """
    #       \ndescribe '#{property}', ->

    #         it 'should contain the correct line ending', ->
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1, 1)).to.contain(_.lineEnding)
    #           expect(_.#{property}(1)).to.contain(_.lineEnding)
    #           expect(_.#{property}()).to.contain(_.lineEnding)\n
    #       """,
    #       -> if idx is arr.length then return done()
    #     )

    describe 'ihtemp', ->

      it 'should contain the correct line ending', ->
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1, 1)).to.contain(_.lineEnding)
        expect(_.ihtemp(1)).to.contain(_.lineEnding)
        expect(_.ihtemp()).to.contain(_.lineEnding)

    describe 'ihpbit', ->

      it 'should contain the correct line ending', ->
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1, 1)).to.contain(_.lineEnding)
        expect(_.ihpbit(1)).to.contain(_.lineEnding)
        expect(_.ihpbit()).to.contain(_.lineEnding)

    describe 'ihbeam', ->

      it 'should contain the correct line ending', ->
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1, 1)).to.contain(_.lineEnding)
        expect(_.ihbeam(1)).to.contain(_.lineEnding)
        expect(_.ihbeam()).to.contain(_.lineEnding)

    describe 'ihgf', ->

      it 'should contain the correct line ending', ->
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1, 1)).to.contain(_.lineEnding)
        expect(_.ihgf(1)).to.contain(_.lineEnding)
        expect(_.ihgf()).to.contain(_.lineEnding)

    describe 'ihread', ->

      it 'should contain the correct line ending', ->
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1, 1)).to.contain(_.lineEnding)
        expect(_.ihread(1)).to.contain(_.lineEnding)
        expect(_.ihread()).to.contain(_.lineEnding)

    describe 'ihcircuit', ->

      it 'should contain the correct line ending', ->
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1, 1)).to.contain(_.lineEnding)
        expect(_.ihcircuit(1)).to.contain(_.lineEnding)
        expect(_.ihcircuit()).to.contain(_.lineEnding)

    describe 'iharp', ->

      it 'should contain the correct line ending', ->
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1, 1)).to.contain(_.lineEnding)
        expect(_.iharp(1)).to.contain(_.lineEnding)
        expect(_.iharp()).to.contain(_.lineEnding)

    describe 'ihtimer', ->

      it 'should contain the correct line ending', ->
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1, 1)).to.contain(_.lineEnding)
        expect(_.ihtimer(1)).to.contain(_.lineEnding)
        expect(_.ihtimer()).to.contain(_.lineEnding)

    describe 'ihsms', ->

      it 'should contain the correct line ending', ->
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1, 1)).to.contain(_.lineEnding)
        expect(_.ihsms(1)).to.contain(_.lineEnding)
        expect(_.ihsms()).to.contain(_.lineEnding)

    describe 'ihpacket', ->

      it 'should contain the correct line ending', ->
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1, 1)).to.contain(_.lineEnding)
        expect(_.ihpacket(1)).to.contain(_.lineEnding)
        expect(_.ihpacket()).to.contain(_.lineEnding)

    describe 'ihpin', ->

      it 'should contain the correct line ending', ->
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1, 1)).to.contain(_.lineEnding)
        expect(_.ihpin(1)).to.contain(_.lineEnding)
        expect(_.ihpin()).to.contain(_.lineEnding)

    describe 'ihlog', ->

      it 'should contain the correct line ending', ->
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1, 1)).to.contain(_.lineEnding)
        expect(_.ihlog(1)).to.contain(_.lineEnding)
        expect(_.ihlog()).to.contain(_.lineEnding)

    describe 'ihswdata', ->

      it 'should contain the correct line ending', ->
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1, 1)).to.contain(_.lineEnding)
        expect(_.ihswdata(1)).to.contain(_.lineEnding)
        expect(_.ihswdata()).to.contain(_.lineEnding)

    describe 'ihswupg', ->

      it 'should contain the correct line ending', ->
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1, 1)).to.contain(_.lineEnding)
        expect(_.ihswupg(1)).to.contain(_.lineEnding)
        expect(_.ihswupg()).to.contain(_.lineEnding)

    describe 'ihccal', ->

      it 'should contain the correct line ending', ->
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1, 1)).to.contain(_.lineEnding)
        expect(_.ihccal(1)).to.contain(_.lineEnding)
        expect(_.ihccal()).to.contain(_.lineEnding)

    describe 'ihreboot', ->

      it 'should contain the correct line ending', ->
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1, 1)).to.contain(_.lineEnding)
        expect(_.ihreboot(1)).to.contain(_.lineEnding)
        expect(_.ihreboot()).to.contain(_.lineEnding)

    describe 'ihgps', ->

      it 'should contain the correct line ending', ->
        expect(_.ihgps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)

    describe 'ihsigacq', ->

      it 'should contain the correct line ending', ->
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1, 1)).to.contain(_.lineEnding)
        expect(_.ihsigacq(1)).to.contain(_.lineEnding)
        expect(_.ihsigacq()).to.contain(_.lineEnding)

    describe 'ihgfacq', ->

      it 'should contain the correct line ending', ->
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1, 1)).to.contain(_.lineEnding)
        expect(_.ihgfacq(1)).to.contain(_.lineEnding)
        expect(_.ihgfacq()).to.contain(_.lineEnding)

    describe 'ihstxmod', ->

      it 'should contain the correct line ending', ->
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxmod(1)).to.contain(_.lineEnding)
        expect(_.ihstxmod()).to.contain(_.lineEnding)

    describe 'ihtxmod', ->

      it 'should contain the correct line ending', ->
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxmod(1)).to.contain(_.lineEnding)
        expect(_.ihtxmod()).to.contain(_.lineEnding)

    describe 'ihstxcw', ->

      it 'should contain the correct line ending', ->
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1, 1)).to.contain(_.lineEnding)
        expect(_.ihstxcw(1)).to.contain(_.lineEnding)
        expect(_.ihstxcw()).to.contain(_.lineEnding)

    describe 'ihtxcw', ->

      it 'should contain the correct line ending', ->
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1, 1)).to.contain(_.lineEnding)
        expect(_.ihtxcw(1)).to.contain(_.lineEnding)
        expect(_.ihtxcw()).to.contain(_.lineEnding)

    describe 'ihtm', ->

      it 'should contain the correct line ending', ->
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1, 1)).to.contain(_.lineEnding)
        expect(_.ihtm(1)).to.contain(_.lineEnding)
        expect(_.ihtm()).to.contain(_.lineEnding)

    describe 'ihaca', ->

      it 'should contain the correct line ending', ->
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1, 1)).to.contain(_.lineEnding)
        expect(_.ihaca(1)).to.contain(_.lineEnding)
        expect(_.ihaca()).to.contain(_.lineEnding)

    describe 'ihdefcnt', ->

      it 'should contain the correct line ending', ->
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1, 1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt(1)).to.contain(_.lineEnding)
        expect(_.ihdefcnt()).to.contain(_.lineEnding)

    describe 'ihset', ->

      it 'should contain the correct line ending', ->
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1, 1)).to.contain(_.lineEnding)
        expect(_.ihset(1)).to.contain(_.lineEnding)
        expect(_.ihset()).to.contain(_.lineEnding)

    describe 'ihstatus', ->

      it 'should contain the correct line ending', ->
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1, 1)).to.contain(_.lineEnding)
        expect(_.ihstatus(1)).to.contain(_.lineEnding)
        expect(_.ihstatus()).to.contain(_.lineEnding)

    describe 'ihip', ->

      it 'should contain the correct line ending', ->
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1, 1)).to.contain(_.lineEnding)
        expect(_.ihip(1)).to.contain(_.lineEnding)
        expect(_.ihip()).to.contain(_.lineEnding)

    describe 'ihinit', ->

      it 'should contain the correct line ending', ->
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1, 1)).to.contain(_.lineEnding)
        expect(_.ihinit(1)).to.contain(_.lineEnding)
        expect(_.ihinit()).to.contain(_.lineEnding)

    describe 'iatcrobst', ->

      it 'should contain the correct line ending', ->
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1, 1)).to.contain(_.lineEnding)
        expect(_.iatcrobst(1)).to.contain(_.lineEnding)
        expect(_.iatcrobst()).to.contain(_.lineEnding)

    describe 'iatcscn', ->

      it 'should contain the correct line ending', ->
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1, 1)).to.contain(_.lineEnding)
        expect(_.iatcscn(1)).to.contain(_.lineEnding)
        expect(_.iatcscn()).to.contain(_.lineEnding)

    describe 'iremweb', ->

      it 'should contain the correct line ending', ->
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1, 1)).to.contain(_.lineEnding)
        expect(_.iremweb(1)).to.contain(_.lineEnding)
        expect(_.iremweb()).to.contain(_.lineEnding)

    describe 'iupdcfg', ->

      it 'should contain the correct line ending', ->
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1, 1)).to.contain(_.lineEnding)
        expect(_.iupdcfg(1)).to.contain(_.lineEnding)
        expect(_.iupdcfg()).to.contain(_.lineEnding)

    describe 'igetfile', ->

      it 'should contain the correct line ending', ->
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1, 1)).to.contain(_.lineEnding)
        expect(_.igetfile(1)).to.contain(_.lineEnding)
        expect(_.igetfile()).to.contain(_.lineEnding)

    describe 'isendfile', ->

      it 'should contain the correct line ending', ->
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1, 1)).to.contain(_.lineEnding)
        expect(_.isendfile(1)).to.contain(_.lineEnding)
        expect(_.isendfile()).to.contain(_.lineEnding)

    describe 'iupdfw', ->

      it 'should contain the correct line ending', ->
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1, 1)).to.contain(_.lineEnding)
        expect(_.iupdfw(1)).to.contain(_.lineEnding)
        expect(_.iupdfw()).to.contain(_.lineEnding)

    describe 'igetfw', ->

      it 'should contain the correct line ending', ->
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1, 1)).to.contain(_.lineEnding)
        expect(_.igetfw(1)).to.contain(_.lineEnding)
        expect(_.igetfw()).to.contain(_.lineEnding)

    describe 'ibnotify', ->

      it 'should contain the correct line ending', ->
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1, 1)).to.contain(_.lineEnding)
        expect(_.ibnotify(1)).to.contain(_.lineEnding)
        expect(_.ibnotify()).to.contain(_.lineEnding)

    describe 'isatcur', ->

      it 'should contain the correct line ending', ->
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1, 1)).to.contain(_.lineEnding)
        expect(_.isatcur(1)).to.contain(_.lineEnding)
        expect(_.isatcur()).to.contain(_.lineEnding)

    describe 'isatvis', ->

      it 'should contain the correct line ending', ->
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1, 1)).to.contain(_.lineEnding)
        expect(_.isatvis(1)).to.contain(_.lineEnding)
        expect(_.isatvis()).to.contain(_.lineEnding)

    describe 'isatinfo', ->

      it 'should contain the correct line ending', ->
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1, 1)).to.contain(_.lineEnding)
        expect(_.isatinfo(1)).to.contain(_.lineEnding)
        expect(_.isatinfo()).to.contain(_.lineEnding)

    describe 'ibalarm', ->

      it 'should contain the correct line ending', ->
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1, 1)).to.contain(_.lineEnding)
        expect(_.ibalarm(1)).to.contain(_.lineEnding)
        expect(_.ibalarm()).to.contain(_.lineEnding)

    describe 'isig', ->

      it 'should contain the correct line ending', ->
        expect(_.isig(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1, 1)).to.contain(_.lineEnding)
        expect(_.isig(1)).to.contain(_.lineEnding)
        expect(_.isig()).to.contain(_.lineEnding)

    describe 'isleep', ->

      it 'should contain the correct line ending', ->
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1, 1)).to.contain(_.lineEnding)
        expect(_.isleep(1)).to.contain(_.lineEnding)
        expect(_.isleep()).to.contain(_.lineEnding)

    describe 'ilog', ->

      it 'should contain the correct line ending', ->
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1, 1)).to.contain(_.lineEnding)
        expect(_.ilog(1)).to.contain(_.lineEnding)
        expect(_.ilog()).to.contain(_.lineEnding)

    describe 'inis', ->

      it 'should contain the correct line ending', ->
        expect(_.inis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1, 1)).to.contain(_.lineEnding)
        expect(_.inis(1)).to.contain(_.lineEnding)
        expect(_.inis()).to.contain(_.lineEnding)

    describe 'igps', ->

      it 'should contain the correct line ending', ->
        expect(_.igps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1, 1)).to.contain(_.lineEnding)
        expect(_.igps(1)).to.contain(_.lineEnding)
        expect(_.igps()).to.contain(_.lineEnding)

    describe 'ipoint', ->

      it 'should contain the correct line ending', ->
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1, 1)).to.contain(_.lineEnding)
        expect(_.ipoint(1)).to.contain(_.lineEnding)
        expect(_.ipoint()).to.contain(_.lineEnding)

    describe 'icpwd', ->

      it 'should contain the correct line ending', ->
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1, 1)).to.contain(_.lineEnding)
        expect(_.icpwd(1)).to.contain(_.lineEnding)
        expect(_.icpwd()).to.contain(_.lineEnding)

    describe 'iclck', ->

      it 'should contain the correct line ending', ->
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1, 1)).to.contain(_.lineEnding)
        expect(_.iclck(1)).to.contain(_.lineEnding)
        expect(_.iclck()).to.contain(_.lineEnding)

    describe 'cgsms', ->

      it 'should contain the correct line ending', ->
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1, 1)).to.contain(_.lineEnding)
        expect(_.cgsms(1)).to.contain(_.lineEnding)
        expect(_.cgsms()).to.contain(_.lineEnding)

    describe 'cgreg', ->

      it 'should contain the correct line ending', ->
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1, 1)).to.contain(_.lineEnding)
        expect(_.cgreg(1)).to.contain(_.lineEnding)
        expect(_.cgreg()).to.contain(_.lineEnding)

    describe 'cgclass', ->

      it 'should contain the correct line ending', ->
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1, 1)).to.contain(_.lineEnding)
        expect(_.cgclass(1)).to.contain(_.lineEnding)
        expect(_.cgclass()).to.contain(_.lineEnding)

    describe 'cgpaddr', ->

      it 'should contain the correct line ending', ->
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1, 1)).to.contain(_.lineEnding)
        expect(_.cgpaddr(1)).to.contain(_.lineEnding)
        expect(_.cgpaddr()).to.contain(_.lineEnding)

    describe 'cgdata', ->

      it 'should contain the correct line ending', ->
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1, 1)).to.contain(_.lineEnding)
        expect(_.cgdata(1)).to.contain(_.lineEnding)
        expect(_.cgdata()).to.contain(_.lineEnding)

    describe 'cgcmod', ->

      it 'should contain the correct line ending', ->
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1, 1)).to.contain(_.lineEnding)
        expect(_.cgcmod(1)).to.contain(_.lineEnding)
        expect(_.cgcmod()).to.contain(_.lineEnding)

    describe 'cgact', ->

      it 'should contain the correct line ending', ->
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1, 1)).to.contain(_.lineEnding)
        expect(_.cgact(1)).to.contain(_.lineEnding)
        expect(_.cgact()).to.contain(_.lineEnding)

    describe 'cgactt', ->

      it 'should contain the correct line ending', ->
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1, 1)).to.contain(_.lineEnding)
        expect(_.cgactt(1)).to.contain(_.lineEnding)
        expect(_.cgactt()).to.contain(_.lineEnding)

    describe 'cgdscont', ->

      it 'should contain the correct line ending', ->
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1, 1)).to.contain(_.lineEnding)
        expect(_.cgdscont(1)).to.contain(_.lineEnding)
        expect(_.cgdscont()).to.contain(_.lineEnding)

    describe 'cgdcont', ->

      it 'should contain the correct line ending', ->
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1, 1)).to.contain(_.lineEnding)
        expect(_.cgdcont(1)).to.contain(_.lineEnding)
        expect(_.cgdcont()).to.contain(_.lineEnding)

    describe 'cres', ->

      it 'should contain the correct line ending', ->
        expect(_.cres(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1, 1)).to.contain(_.lineEnding)
        expect(_.cres(1)).to.contain(_.lineEnding)
        expect(_.cres()).to.contain(_.lineEnding)

    describe 'csas', ->

      it 'should contain the correct line ending', ->
        expect(_.csas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1, 1)).to.contain(_.lineEnding)
        expect(_.csas(1)).to.contain(_.lineEnding)
        expect(_.csas()).to.contain(_.lineEnding)

    describe 'cscb', ->

      it 'should contain the correct line ending', ->
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1, 1)).to.contain(_.lineEnding)
        expect(_.cscb(1)).to.contain(_.lineEnding)
        expect(_.cscb()).to.contain(_.lineEnding)

    describe 'csdh', ->

      it 'should contain the correct line ending', ->
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1, 1)).to.contain(_.lineEnding)
        expect(_.csdh(1)).to.contain(_.lineEnding)
        expect(_.csdh()).to.contain(_.lineEnding)

    describe 'csmp', ->

      it 'should contain the correct line ending', ->
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1, 1)).to.contain(_.lineEnding)
        expect(_.csmp(1)).to.contain(_.lineEnding)
        expect(_.csmp()).to.contain(_.lineEnding)

    describe 'csca', ->

      it 'should contain the correct line ending', ->
        expect(_.csca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1, 1)).to.contain(_.lineEnding)
        expect(_.csca(1)).to.contain(_.lineEnding)
        expect(_.csca()).to.contain(_.lineEnding)

    describe 'cmgf', ->

      it 'should contain the correct line ending', ->
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1, 1)).to.contain(_.lineEnding)
        expect(_.cmgf(1)).to.contain(_.lineEnding)
        expect(_.cmgf()).to.contain(_.lineEnding)

    describe 'cpms', ->

      it 'should contain the correct line ending', ->
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1, 1)).to.contain(_.lineEnding)
        expect(_.cpms(1)).to.contain(_.lineEnding)
        expect(_.cpms()).to.contain(_.lineEnding)

    describe 'csms', ->

      it 'should contain the correct line ending', ->
        expect(_.csms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1, 1)).to.contain(_.lineEnding)
        expect(_.csms(1)).to.contain(_.lineEnding)
        expect(_.csms()).to.contain(_.lineEnding)

    describe 'cmar', ->

      it 'should contain the correct line ending', ->
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1, 1)).to.contain(_.lineEnding)
        expect(_.cmar(1)).to.contain(_.lineEnding)
        expect(_.cmar()).to.contain(_.lineEnding)

    describe 'crsm', ->

      it 'should contain the correct line ending', ->
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1, 1)).to.contain(_.lineEnding)
        expect(_.crsm(1)).to.contain(_.lineEnding)
        expect(_.crsm()).to.contain(_.lineEnding)

    describe 'cpbw', ->

      it 'should contain the correct line ending', ->
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1, 1)).to.contain(_.lineEnding)
        expect(_.cpbw(1)).to.contain(_.lineEnding)
        expect(_.cpbw()).to.contain(_.lineEnding)

    describe 'cpbr', ->

      it 'should contain the correct line ending', ->
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1, 1)).to.contain(_.lineEnding)
        expect(_.cpbr(1)).to.contain(_.lineEnding)

    describe 'cpbs', ->

      it 'should contain the correct line ending', ->
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1, 1)).to.contain(_.lineEnding)
        expect(_.cpbs(1)).to.contain(_.lineEnding)
        expect(_.cpbs()).to.contain(_.lineEnding)

    describe 'cind', ->

      it 'should contain the correct line ending', ->
        expect(_.cind(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1, 1)).to.contain(_.lineEnding)
        expect(_.cind(1)).to.contain(_.lineEnding)
        expect(_.cind()).to.contain(_.lineEnding)

    describe 'cpin', ->

      it 'should contain the correct line ending', ->
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1, 1)).to.contain(_.lineEnding)
        expect(_.cpin(1)).to.contain(_.lineEnding)
        expect(_.cpin()).to.contain(_.lineEnding)

    describe 'cusd', ->

      it 'should contain the correct line ending', ->
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1, 1)).to.contain(_.lineEnding)
        expect(_.cusd(1)).to.contain(_.lineEnding)
        expect(_.cusd()).to.contain(_.lineEnding)

    describe 'clcc', ->

      it 'should contain the correct line ending', ->
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1, 1)).to.contain(_.lineEnding)
        expect(_.clcc(1)).to.contain(_.lineEnding)
        expect(_.clcc()).to.contain(_.lineEnding)

    describe 'ccug', ->

      it 'should contain the correct line ending', ->
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1, 1)).to.contain(_.lineEnding)
        expect(_.ccug(1)).to.contain(_.lineEnding)
        expect(_.ccug()).to.contain(_.lineEnding)

    describe 'cpwd', ->

      it 'should contain the correct line ending', ->
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1, 1)).to.contain(_.lineEnding)
        expect(_.cpwd(1)).to.contain(_.lineEnding)
        expect(_.cpwd()).to.contain(_.lineEnding)

    describe 'clck', ->

      it 'should contain the correct line ending', ->
        expect(_.clck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1, 1)).to.contain(_.lineEnding)
        expect(_.clck(1)).to.contain(_.lineEnding)
        expect(_.clck()).to.contain(_.lineEnding)

    describe 'cpls', ->

      it 'should contain the correct line ending', ->
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1, 1)).to.contain(_.lineEnding)
        expect(_.cpls(1)).to.contain(_.lineEnding)
        expect(_.cpls()).to.contain(_.lineEnding)

    describe 'cpol', ->

      it 'should contain the correct line ending', ->
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1, 1)).to.contain(_.lineEnding)
        expect(_.cpol(1)).to.contain(_.lineEnding)
        expect(_.cpol()).to.contain(_.lineEnding)

    describe 'cops', ->

      it 'should contain the correct line ending', ->
        expect(_.cops(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1, 1)).to.contain(_.lineEnding)
        expect(_.cops(1)).to.contain(_.lineEnding)
        expect(_.cops()).to.contain(_.lineEnding)

    describe 'creg', ->

      it 'should contain the correct line ending', ->
        expect(_.creg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1, 1)).to.contain(_.lineEnding)
        expect(_.creg(1)).to.contain(_.lineEnding)
        expect(_.creg()).to.contain(_.lineEnding)

    describe 'cnum', ->

      it 'should contain the correct line ending', ->
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1, 1)).to.contain(_.lineEnding)
        expect(_.cnum(1)).to.contain(_.lineEnding)
        expect(_.cnum()).to.contain(_.lineEnding)

    describe 'cscs', ->

      it 'should contain the correct line ending', ->
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1, 1)).to.contain(_.lineEnding)
        expect(_.cscs(1)).to.contain(_.lineEnding)
        expect(_.cscs()).to.contain(_.lineEnding)

    describe 'cmee', ->

      it 'should contain the correct line ending', ->
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1, 1)).to.contain(_.lineEnding)
        expect(_.cmee(1)).to.contain(_.lineEnding)
        expect(_.cmee()).to.contain(_.lineEnding)

    describe 'cbc', ->

      it 'should contain the correct line ending', ->
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1, 1)).to.contain(_.lineEnding)
        expect(_.cbc(1)).to.contain(_.lineEnding)
        expect(_.cbc()).to.contain(_.lineEnding)

    describe 'cfun', ->

      it 'should contain the correct line ending', ->
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1, 1)).to.contain(_.lineEnding)
        expect(_.cfun(1)).to.contain(_.lineEnding)
        expect(_.cfun()).to.contain(_.lineEnding)

    describe 'cpas', ->

      it 'should contain the correct line ending', ->
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1, 1)).to.contain(_.lineEnding)
        expect(_.cpas(1)).to.contain(_.lineEnding)
        expect(_.cpas()).to.contain(_.lineEnding)

    describe 'cimi', ->

      it 'should contain the correct line ending', ->
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1, 1)).to.contain(_.lineEnding)
        expect(_.cimi(1)).to.contain(_.lineEnding)
        expect(_.cimi()).to.contain(_.lineEnding)

    describe 'cgsn', ->

      it 'should contain the correct line ending', ->
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1, 1)).to.contain(_.lineEnding)
        expect(_.cgsn(1)).to.contain(_.lineEnding)
        expect(_.cgsn()).to.contain(_.lineEnding)

    describe 'cgms', ->

      it 'should contain the correct line ending', ->
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1, 1)).to.contain(_.lineEnding)
        expect(_.cgms(1)).to.contain(_.lineEnding)
        expect(_.cgms()).to.contain(_.lineEnding)

    describe 'cgmr', ->

      it 'should contain the correct line ending', ->
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1, 1)).to.contain(_.lineEnding)
        expect(_.cgmr(1)).to.contain(_.lineEnding)
        expect(_.cgmr()).to.contain(_.lineEnding)

    describe 'cgmp', ->

      it 'should contain the correct line ending', ->
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1, 1)).to.contain(_.lineEnding)
        expect(_.cgmp(1)).to.contain(_.lineEnding)
        expect(_.cgmp()).to.contain(_.lineEnding)

    describe 'cgmn', ->

      it 'should contain the correct line ending', ->
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1, 1)).to.contain(_.lineEnding)
        expect(_.cgmn(1)).to.contain(_.lineEnding)
        expect(_.cgmn()).to.contain(_.lineEnding)

    describe 'cgmm', ->

      it 'should contain the correct line ending', ->
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1, 1)).to.contain(_.lineEnding)
        expect(_.cgmm(1)).to.contain(_.lineEnding)
        expect(_.cgmm()).to.contain(_.lineEnding)

    describe 'cgmi', ->

      it 'should contain the correct line ending', ->
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1, 1)).to.contain(_.lineEnding)
        expect(_.cgmi(1)).to.contain(_.lineEnding)
        expect(_.cgmi()).to.contain(_.lineEnding)

    describe 'echo', ->

      it 'should contain the correct line ending', ->
        expect(_.echo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1, 1)).to.contain(_.lineEnding)
        expect(_.echo(1)).to.contain(_.lineEnding)
        expect(_.echo()).to.contain(_.lineEnding)

    describe '$$', ->

      it 'should contain the correct line ending', ->
        expect(_.$$(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1, 1)).to.contain(_.lineEnding)
        expect(_.$$(1)).to.contain(_.lineEnding)
        expect(_.$$()).to.contain(_.lineEnding)

