channel = Channel(String).new

spawn do
  channel.send("Hello")
  sleep 0.5
  channel.send("World!")
end

value = channel.receive
puts value #=> Hello

value = channel.receive #This blocks the main thread and wait untils something is sent on this channel
puts value #=> World!