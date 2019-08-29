class Animal
  property age : Int8
  getter name : String

  def initialize(@name : String, @age : Int8)
  end

  def to_json
    "{\"name\": \"#{name}\",\"age\": #{age}}"
  end
end

alex = Animal.new("Alex", 2)
puts alex.name

puts alex.age
alex.age = 10
puts alex.age

puts alex.to_json
