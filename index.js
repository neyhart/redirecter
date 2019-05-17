'use strict';

const express = require('express');
const app = express();

app.get('*', (req, res, next) => {
  const url = `https://${req.headers.host}${req.url}`;
  console.log(url);
  res.redirect(301, url);
});

const port = '4001';
app.listen(port, '0.0.0.0', () => {
  console.log('Express server is listening on port', port);
});