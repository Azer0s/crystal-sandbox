abstract class Animal
	property age : Int8
	getter name : String

	def initialize(@name : String, @age : Int8)
 	end

  abstract def do_talk

  def talk
    "#{name} says '#{do_talk}'"
  end
end

class Dog < Animal
  def do_talk
    "Woof!"
  end
end

class Cat < Animal
  def do_talk
    "Miau"
  end
end

john = Dog.new "John", 2
puts john.talk

mia = Cat.new "Mia", 4
puts mia.talk
