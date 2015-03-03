
net = require('net')
socket = new net.Socket()

socket.setTimeout(30000)

socket.on('error', (err) ->
  socket.unref()
  socket.destroy()
).on('end', ->
  socket.unref()
  socket.destroy()
)

module.exports = socket
