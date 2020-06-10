var app = require('http').createServer(handler);
var fs = require('fs');
var chat = require('rs-chat')(app);

chat.init({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'chat_application',
  assets   : 'assets'
});

app.listen(8080);

 
console.log('Server started at 8080');
console.log('Now you have two end point: http://localhost:8080/user1.html');
console.log('Second end point is http://localhost:8080/user2.html');
console.log('Open both end point in different browser and your chat is ready to deploy');
console.log('Have fun :)');


function handler (req, res) {

    var filePath = '.' + req.url;
    if (filePath == './')
        filePath = './user1.html';

  fs.readFile(filePath, function (err, data) {
    if (err) {
      res.writeHead(500);
      return res.end('Error loading user1.html');
    }

    res.writeHead(200);
    res.end(data);
  });
}