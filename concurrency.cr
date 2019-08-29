require "http/client"

spawn do
  response = HTTP::Client.get "http://www.example.com"
  response.body.lines.each do |line|
    puts line
  end
end

spawn do
  5.times do
    puts "Hello!"
  end
end

sleep
