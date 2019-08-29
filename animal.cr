class Animal
  def initialize(name : String, age : Int8)
    @name = name
    @age = age
  end
end

alex = Animal.new("Alex", 2)
puts alex.@name
