var http = require('http');
var fs = require('fs');

http.createServer(function (req, res) {
  fs.appendFileSync('/logs/app_logs.txt', `Request at ${Date()}`);
  res.writeHead(200, { 'Content-type': 'text/plain' });
  res.write('Servidor Web - Ejemplo');
  res.end();
}).listen(7000);