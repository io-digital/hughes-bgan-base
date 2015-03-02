
module.exports = class Sanitiser

  constructor: (@lineDelimiter = '\n') ->

  setChunk: (chunk) =>
    @original = @modified = chunk
    return @

  stripOK: =>
    @modified = @modified.replace(/(\r\nOK)|(OK\r\n)/g, '')
    return @

  stripERROR: =>
    @modified = @modified.replace(/(\r\nERROR|ERROR\r\n)/g, '')
    return @

  stripCRLF: =>
    @modified = @modified.replace(/\r\n/g, '').trim()
    return @

  stripCommas: =>
    @modified = @modified.replace(/(, )|(,)/g, ' ')
    return @

  insertBreaks: =>
    @modified = @modified.replace(
      /(\d+((?=_)|(?= \+)|(?=\+)|(?=OK)|(?=ERROR)|(?= OK)|(?= ERROR))|(OK|ERROR)((?=_)|(?=\+)|(?= \+)))/g,
      "$&#{@lineDelimiter}"
    )
    return @

  split: =>
    @modified = @modified.split(@lineDelimiter)
    return @

  trim: =>
    @modified = @modified.map((line) ->
      if line.charAt(0) is ' '
        line[1..]
      else line
    )
    return @

  deleteOKERROR: =>
    for response, i in @modified
      @modified.splice(i, 1) if response is ''
    return @

  value: =>
    return @modified
