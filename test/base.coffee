assert = require('assert')
{expect} = require('chai')
sinon = require('sinon')

Base = require('../lib/base')

describe 'Base', ->

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
