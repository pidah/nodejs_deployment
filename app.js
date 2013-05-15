var express = require("express");
var app = express();
app.use(express.logger());

app.get('/', function(request, response) {
  response.send('My awesome node app!');
});

var port = process.env.PORT || 3000;
app.listen(port, function() {
  console.log("Listening on " + port);
});
