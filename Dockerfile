FROM registry.access.redhat.com/rhscl/nodejs-8-rhel7:latest
RUN echo -e "var http = require('http');\nhttp.createServer(function (request, response) {response.writeHead(200, {'Content-Type': 'text/plain'});response.end('Hello World...');}).listen(8080);\nconsole.log('Server started');" >> $HOME/app.js
CMD node $HOME/app.js
