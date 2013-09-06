CONTACT_DATA_FILE = 'contacts.txt'

#DRY
#DONT REPEAT YOURSELF

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

  File.open(CONTACT_DATA_FILE, 'a+') do |f|
    f.write "#{name}|#{email}\n"
  end
end

def view_contacts
  puts "Contacts\n==========="
  contacts = File.read(CONTACT_DATA_FILE).lines
  contacts.each_with_index do |contact, i|
    name, email = contact.split('|')
    puts "#{i+1}."
    puts "Name: #{name}"
    puts "Email: #{email}"
    puts '----------'
  end
  puts "==========="
  return contacts
end

def delete_contact
  contacts = view_contacts
  puts "Enter the serial number of the contact you want to delete:"
  id = gets.chomp.strip.to_i
  contacts.delete_at(id - 1)
  File.open(CONTACT_DATA_FILE, 'w') do |f|
    contacts.each do |contact|
      f.write "#{contact}"
    end
  end
end

def search_contact
  puts "Enter search term:"
  search_term = gets.chomp.strip
  contacts = File.read(CONTACT_DATA_FILE).lines
  contacts.each do |contact|
    if contact.downcase.include?(search_term.downcase)
      name, email = contact.split('|')
      puts "Name: #{name}"
      puts "Email: #{email}"
      puts '----------'
    end
  end
end

while true
  puts "1. Add Contact\n2. List all contacts\n3. Delete contact\n4. Search \n0. Exit"
  option = gets.chomp.strip.to_i
  case option
  when 1
    add_contact
  when  2
    view_contacts
  when 3
    delete_contact
  when 4
    search_contact
  when 0
    exit
  else
    puts "Select a valid option"
  end
end
