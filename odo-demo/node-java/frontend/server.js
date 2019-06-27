console.log('Server-side code running');
require('dotenv').config();

var request = require('request');

const express = require('express');

const app = express();

// serve files from the public directory
app.use(express.static('public'));

// start the express web server listening on 8080
app.listen(8080, () => {
  console.log('listening on 8080');
});

// serve the homepage
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

app.post('/', (req, res) => {
	 req.on('data', function(chunk) {
		 
		  var formdata = chunk.toString();
		  console.log(formdata);
		  console.log(process.env.COMPONENT_BACKEND_HOST);
		  console.log(process.env.COMPONENT_BACKEND_PORT);
	
 request('http://'+process.env.COMPONENT_BACKEND_HOST+':'+process.env.COMPONENT_BACKEND_PORT+'/springbootwildfly/hello/'+formdata, function (error, response, body) {
	 if (!error && response.statusCode == 200) {
        	res.write(body);
        	res.end();
     	 }
	})
	
	});
});
