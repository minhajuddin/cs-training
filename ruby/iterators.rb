#i = 1
#while i <= 10
  #puts i
  #i += 1
#end

#(1..10).each do |i|
  #puts i
#end

#names = ["Kha", "Jack", "And", "X", "E"]

#names.each do |name|
  #puts "#{name} is #{name.length} characters long."
#end

#[1, 2, 3, 4, 5].each do |i|
  #puts i
#end

#(1..10).each do |i|
  #puts i
#end

#i = 0
#while i < names.length
  #puts names[i]
  #i+=1
#end

names = []
(1..10).each do |i|
  #names.push(i)
  names << i
end

puts names.inspect
