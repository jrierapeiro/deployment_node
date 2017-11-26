var http = require('http');

http.createServer(function (req, res) {
  console.log("Respondiendo al cliente: "+ (new Date().toISOString()) + " URL: "+ req.url);
  res.writeHead(200, { 'Content-type': 'text/plain' });
  res.write('Servidor Web - Ejemplo');
  res.end();
}).listen(7000);