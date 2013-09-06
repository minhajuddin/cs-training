FILE_NAME = 'contacts.txt'

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

  File.open(FILE_NAME, 'a+') do |f|
    f.write "#{name}|#{email}\n"
  end
end

def view_contacts
  puts "Contacts\n==========="
  contacts = File.read(FILE_NAME).lines
  contacts.each_with_index do |contact, i|
    name, email = contact.split('|')
    puts "#{i+1}."
    puts "Name: #{name}"
    puts "Email: #{email}"
    puts '----------'
  end
  puts "==========="
end

while true
  puts "1. Add Contact\n2. List all contacts"
  option = gets.chomp.strip.to_i
  if option == 1
    add_contact
  elsif option == 2
    view_contacts
  end
end
