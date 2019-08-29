require "http/server"

server = HTTP::Server.new do |ctx|
  ctx.response.content_type = "text/plain"
  ctx.response.print(ctx.request.body != nil ? ctx.request.body.as(IO).gets : "Hello!")
end

address = server.bind_tcp 8080
server.listen
