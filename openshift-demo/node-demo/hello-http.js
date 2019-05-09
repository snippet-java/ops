var http = require('http');
http.createServer(function (req, res) {
    var now = new Date();
    res.end('Hello openshift from Node.js! ' + now.toJSON() + ' on ' + process.env.HOSTNAME  + '\n');
    
}).listen(8082, '0.0.0.0');
console.log('Server running at http://:8082/');
