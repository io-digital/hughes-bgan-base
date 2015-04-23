
var bgan = require('./lib');
var _ = new bgan.commander(process.env.BGAN_PASSWORD);

new bgan.base({
  host: process.env.BGAN_HOST,
  port: process.env.BGAN_PORT,
  stripResponses: true,
  commands: [
    _.iclck('ad', '0'),
    _.cmee('1'),
    _.ihstatus('flts'),
    _.ihstatus('gps'),
    _.inis('eth'),
    _.inis('usb'),
    _.isig(),
    _.isatcur(),
    _.ihtemp(),
    _.ihbeam(),
    _.cimi(),
    _.ihread('imei'),
    _.ihip('unitip')
  ]
}).on('data', function(line, raw) {
  console.log(line);
}).on('end', function(lines, raw) {
  console.log(lines);
}).connect()
