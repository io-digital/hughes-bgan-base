assert = require('assert')
{expect} = require('chai')
sinon = require('sinon')

Base = require('../lib/base')

describe 'Base', ->

  it 'should construct without throwing', ->
    try
      assert.ok(
        new Base(
          host: '123.123.123.132',
          port: 9000,
          commands: ["abc"]
        )
      )
    catch err
      assert.fail(err)

  it 'should throw an error if options object is missing', ->

    try
      new Base()
      assert.fail('constructor did not throw the expected error')
    catch e
      assert.ok(e)

  it 'should throw an error if host is missing', ->

    try
      new Base({port: 9000, commands: []})
      assert.fail('constructor did not throw the expected error')
    catch e
      assert.ok(e)

  it 'should throw an error if port is missing', ->

    try
      new Base({host: '123.123.123.123', commands: []})
      assert.fail('constructor did not throw the expected error')
    catch e
      assert.ok(e)

  it 'should throw an error if commands is missing', ->

    try
      new Base({host: '123.123.123.123', port: 2134})
      assert.fail('constructor did not throw the expected error')
    catch e
      assert.ok(e)

  it 'should throw an error if host, port and commands is missing', ->

    try
      new Base({})
      assert.fail('constructor did not throw the expected error')
    catch e
      assert.ok(e)
