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
  f.write "#{name}|#{email}\n"
  #f.write "#{name} #{email} #{phone} #{address}"
  f.close
end

while true
  puts "1. Add Contact\n2. List all contacts"
  option = gets.chomp.strip.to_i
  if option == 1
    add_contact
  elsif option == 2
    puts "Contacts\n==========="
    contacts = File.read('contacts.txt').split("\n")
    i = 1
    contacts.each do |contact|
      contact_tokens = contact.split('|')
      name = contact_tokens[0]
      email = contact_tokens[1]
      puts "#{i}."
      puts "Name: #{name}"
      puts "Email: #{email}"
      puts '----------'
      i += 1
    end
    puts "==========="
  end
end
