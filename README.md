# hughes-bgan-base

[![Build Status](https://travis-ci.org/io-digital/hughes-bgan-base.svg)](https://travis-ci.org/io-digital/hughes-bgan-base)
[![Coverage Status](https://coveralls.io/repos/io-digital/hughes-bgan-base/badge.svg)](https://coveralls.io/r/io-digital/hughes-bgan-base)
[![NPM](https://nodei.co/npm/hughes-bgan-base.png?mini=true)](https://nodei.co/npm/hughes-bgan-base/)

A base package for communication to a Hughes BGAN device.

##### usage example

```javascript
var bgan = require('hughes-bgan-base');

var _ = new bgan.commander('password');

var base = new bgan.base({
  host: '123.234.234.123',
  port: 11000,
  password: 'default',
  queue: [
    'at e1',
    'at d +441494712784',
    'at h0',
    _.iclck('ad', '1')
  ],
  stripResponses: true
}).on('data', function(parsed, raw) {
}).on('end', function(lines) {
  // lines: [ 'OK', 'CONNECT', 'OK' ]
}).connect();
```
