def get_name
  puts "What's your name?"
  gets.chomp
end

def greet(name)
  puts("Hello, #{name}!")
end

greet(get_name)
