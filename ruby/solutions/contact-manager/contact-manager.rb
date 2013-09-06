def add_contact
  #1. A user should be able to add a new contact *1 marks*
  puts "Name:"
  name = gets.chomp.strip
  puts "Email:"
  email = gets.chomp.strip
  #puts "Phone:"
  #phone = gets.chomp.strip
  #puts "Address:"
  #address = gets.chomp.strip

  f = File.open('contacts.txt', 'a+')
  f.write "#{name} #{email}\n"
  #f.write "#{name} #{email} #{phone} #{address}"
  f.close
end

while true
  add_contact
end
