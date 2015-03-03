assert = require('assert')
{expect} = require('chai')
sinon = require('sinon')

Sanitiser = require('../lib/sanitiser')

describe 'Sanitiser', ->

  test1 = '\r\nOK\r\n\r\n_ISIG: 65\r\nERROR\r\n'
  test2 = '_ISIG: 65, -5.32342, 34:as:23:c3:sd\r\nERROR\r\n'

  it 'should construct without throwing', ->
    try
      new Sanitiser(test1)
    catch err
      assert.fail(err)

  it 'should assign the parsed result to a a field named parsed', ->

    sanitiser = new Sanitiser(test1)

    expect(sanitiser).to.have.property('parsed')
    expect(sanitiser.parsed).to.be.instanceof(Array)
    expect(sanitiser.parsed).to.deep.equal(['OK', '_ISIG: 65', 'ERROR'])

  it 'should replace commas with white space in the parsed result', ->

    sanitiser = new Sanitiser(test2)

    expect(sanitiser.parsed).to.deep.equal(
      ['_ISIG: 65 -5.32342 34:as:23:c3:sd', 'ERROR']
    )

  it 'should assign the stripped and parsed result to a a field named stripped', ->

    sanitiser = new Sanitiser(test1)

    expect(sanitiser).to.have.property('stripped')
    expect(sanitiser.stripped).to.be.instanceof(Array)
    expect(sanitiser.stripped).to.deep.equal(['_ISIG: 65'])
