var express = require('express'),
    http = require('http'),
    redis = require('redis');

var app = express();
var client = redis.createClient('6379', 'localhost');


app.get('/', function(req, res, next) {
  client.incr('counter', function(err, counter) {
    if(err) return next(err);
    res.send('This page has been viewed ' + counter + ' times!');
  });
});

http.createServer(app).listen(process.env.SERVER_PORT || 8080, function() {
  console.log('Listening on port ' + (process.env.SERVER_PORT || 8080));
});
