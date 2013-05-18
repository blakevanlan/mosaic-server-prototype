
require("coffee-script");
app = require("./controllers/host.coffee");

http = require("http");
port = process.env.PORT || 2100;

server = http.createServer(app).listen(port, function () {
   console.log("Mosaic Test Server listening on " + port);
});