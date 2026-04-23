const http = require("http");

const server = http.createServer((req, res) => {
  res.end("Hola desde API");
});

server.listen(3000);