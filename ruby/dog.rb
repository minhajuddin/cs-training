#class Dog
  #def initialize(name, age, breed)
    #@name  = name
    #@age   = age
    #@breed = breed
  #end

  #def introduce
    #puts("My name is #{@name}. I am #{@age} years old and I am a #{@breed}.")
  #end
#end

#fido = Dog.new("Fido", 10, "Stray")
#droopy = Dog.new("Droopy", 5, "Dr")
#tiger = Dog.new("Tiger", 15, "Alsatian")

#fido.introduce
#droopy.introduce
#tiger.introduce
#
class Dog
  def name=(x)
    @name = x
  end

  def name
    @name
  end

  def introduce
    puts "My name is #{@name}."
  end
end

class Stray < Dog
end

d = Dog.new()
d.name = "Fido"
#d.introduce

puts "Name: #{d.name}"
