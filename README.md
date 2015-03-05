# hughes-bgan-base

[![NPM](https://nodei.co/npm/hughes-bgan-base.png?compact=true)](https://nodei.co/npm/hughes-bgan-base/)

[![Dependency Status](https://david-dm.org/io-digital/hughes-bgan-base.svg)](https://david-dm.org/io-digital/hughes-bgan-base)
[![devDependency Status](https://david-dm.org/io-digital/hughes-bgan-base/dev-status.svg)](https://david-dm.org/io-digital/hughes-bgan-base#info=devDependencies)

[![Build Status](https://travis-ci.org/io-digital/hughes-bgan-base.svg)](https://travis-ci.org/io-digital/hughes-bgan-base)
[![Coverage Status](https://coveralls.io/repos/io-digital/hughes-bgan-base/badge.svg?branch=master)](https://coveralls.io/r/io-digital/hughes-bgan-base?branch=master)

A base package for communication to a Hughes BGAN device.

##### usage example

```javascript
var bgan = require('hughes-bgan-base'),
    _ = new bgan.commander('password');

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
  autoConnect: true,
  stripResponses: true,
  onData:  function(parsed, raw) {},
  onEnd: function(lines) {}
});
```
