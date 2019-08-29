a = 10
b = "Hello"

c = rand < 0.5 ? a : b
puts typeof(c)

def getDataOrNil
    rand < 0.5 ? {firstname: "John", lastname: "Doe"} : nil
end

john = getDataOrNil

if john != nil
    john = john.as(NamedTuple(firstname: String, lastname: String))
    john_firstname, john_lastname = john[:firstname], john[:lastname]
    puts john_firstname
    puts john_lastname
else
    puts "No data found!"
end
