class Dog
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def introduce
    puts "Hello there, My name is #{@name}."
  end
end

class Stray < Dog
  def introduce
    puts "Woof woof bow."
  end
end

#f = Dog.new("Fido")
#f.introduce

s = Stray.new("Flea")
#s.introduce
#puts s.name
puts s.class.superclass.superclass.superclass
