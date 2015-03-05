
net = require('net')

class Socket extends net.Socket

  constructor: ->
    super()
    @setTimeout(30000)
    @on('end', @destroy)
    @on('error', @destroy)
    @on('timeout', @destroy)

module.exports = new Socket()
