
net = require('net')
socket = new net.Socket()

socket.setTimeout(30000)

destruct = ->
  socket.unref()
  socket.destroy()

socket
  .on('end', destruct)
  .on('error', destruct)
  .on('timeout', destruct)

module.exports = socket
