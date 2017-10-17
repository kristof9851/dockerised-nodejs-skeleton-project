const express = require('express');
const root = require('app-root-path');
const config = require(root + '/src/infra/config');

const app = express();

app.get('/', function (req, res) {
  config.logCurrentConfig();
  res.send('it works');
});

app.listen(8080);