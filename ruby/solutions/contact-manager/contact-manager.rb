CONTACT_DATA_FILE = 'contacts.txt'

#DRY
#DONT REPEAT YOURSELF

def get_contact
  puts "Name:"
  name = gets.chomp.strip
  puts "Email:"
  email = gets.chomp.strip
  [name, email]
end

def add_contact
  #1. A user should be able to add a new contact *1 marks*
  #puts "Phone:"
  #phone = gets.chomp.strip
  #puts "Address:"
  #address = gets.chomp.strip
  name, email = get_contact

  File.open(CONTACT_DATA_FILE, 'a+') do |f|
    f.write "#{name}|#{email}\n"
  end
end

def edit_contact
  contacts = list_contacts
  puts "Enter the serial number of the contact you want to edit:"
  id = gets.chomp.strip.to_i

  #get the new data
  name, email = get_contact

  #overwrite that line with new data
  contacts[id-1] = "#{name}|#{email}\n"
    save_contacts(contacts)
end

def delete_contact
  contacts = list_contacts
  puts "Enter the serial number of the contact you want to delete:"
  id = gets.chomp.strip.to_i
  contacts.delete_at(id - 1)
  save_contacts(contacts)
end

def save_contacts(contacts)
  File.open(CONTACT_DATA_FILE, 'w') do |f|
    contacts.each do |contact|
      f.write "#{contact}"
    end
  end
end

def read_contacts
  File.read(CONTACT_DATA_FILE).lines
end

def print_contact(line, serial_number)
  name, email = line.split('|')
  puts "#{serial_number}."
  puts "Name: #{name}"
  puts "Email: #{email}"
  puts '----------'
end

def print_bar
  puts "==========="
end

def list_contacts
  puts "Contacts\n==========="
  contacts = read_contacts
  contacts.each_with_index do |contact, i|
    print_contact(contact, i + 1)
  end
  print_bar
  return contacts
end

def search_contact
  puts "Enter search term:"
  search_term = gets.chomp.strip
  contacts = read_contacts
  search_results = []
  contacts.each do |contact|
    if contact.downcase.include?(search_term.downcase)
      search_results << contact
    end
  end

  print_bar
  puts "Found #{search_results.length} results"
  search_results.each_with_index do |result, index|
    print_contact(result, index + 1)
  end
end

while true
  puts "1. Add Contact\n2. List all contacts\n3. Delete contact\n4. Search\n5. Edit \n0. Exit"
  option = gets.chomp.strip.to_i
  case option
  when 1
    add_contact
  when  2
    list_contacts
  when 3
    delete_contact
  when 4
    search_contact
  when 5
    edit_contact
  when 0
    exit
  else
    puts "Select a valid option"
  end
end
