assert = require('assert')
{expect} = require('chai')
sinon = require('sinon')

Parser = require('../lib/parser')

describe 'Parser', ->

  test1 = '\r\nOK\r\n\r\n_ISIG: 65\r\nERROR\r\n'
  test2 = '_ISIG: 65, -5.32342, 34:as:23:c3:sd\r\nERROR\r\n'
  test3 = '_ISIG: 65, -5.32342, 34:as:23:c3:sd \r\nERROR\r\n'

  it 'should construct without throwing', ->
    try
      new Parser(test1)
    catch err
      assert.fail(err)

  it 'should assign the parsed result to a a field named parsed', ->

    parser = new Parser(test1)

    expect(parser).to.have.property('parsed')
    expect(parser.parsed).to.be.instanceof(Array)
    expect(parser.parsed).to.deep.equal(['OK', '_ISIG: 65', 'ERROR'])

  it 'should replace commas with white space in the parsed result', ->

    parser = new Parser(test2)

    expect(parser.parsed).to.deep.equal(
      ['_ISIG: 65 -5.32342 34:as:23:c3:sd', 'ERROR']
    )

    parser = new Parser(test3)

    expect(parser.parsed).to.deep.equal(
      ['_ISIG: 65 -5.32342 34:as:23:c3:sd ', 'ERROR']
    )

  it 'should assign the stripped and parsed result to a a field named stripped', ->

    parser = new Parser(test1)

    expect(parser).to.have.property('stripped')
    expect(parser.stripped).to.be.instanceof(Array)
    expect(parser.stripped).to.deep.equal(['_ISIG: 65'])
