
net = require('net')

class Socket extends net.Socket

  constructor: ->
    super()
    @setMaxListeners(20)
    @on('end', @destroy)
    @on('error', @destroy)
    @setTimeout(10000, @destroy)

module.exports = new Socket()
