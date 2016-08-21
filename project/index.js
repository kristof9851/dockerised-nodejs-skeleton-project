var http = require('http');

http.createServer(function(req, res){
  res.end('it is aliiiive');
}).listen(8080);
