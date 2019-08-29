def executeBlock
  yield "executeBlock"
end

executeBlock do |x|
  puts "Hello from inside #{x}"
end


def count(i)
  c = 0
  while c < i
    yield c
    c += 1
  end
end

count 5 do |i|
  puts "The current number is: #{i}"
end
