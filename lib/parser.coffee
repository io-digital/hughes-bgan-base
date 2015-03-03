
module.exports = class Parser

  constructor: (@raw, @inputDelimiter = '\r\n', @outputDelimiter = '\n') ->
    @parsed = @raw.split(@inputDelimiter)
    for token, i in @parsed
      if token is ''
        @parsed.splice(i, 1)

    for token, i in @parsed
      @parsed[i] = token.replace(/(, |,)/g, ' ')

    @stripped = @parsed[..]
    for token, i in @stripped
      if token is 'OK' or token is 'ERROR'
        @stripped.splice(i, 1)
