Hapi = require 'hapi'

server = Hapi.createServer '0.0.0.0', process.env.PORT || 8080, {}

server.route
    method: 'GET',
    path: '/{path*}',
    handler:
      directory:
        path: "./public"
        listing: false
        index: true

# Start the server
server.start ->
  console.log "Hapi server started at " + server.info.uri
