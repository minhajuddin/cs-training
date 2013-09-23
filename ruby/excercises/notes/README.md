# Notes app

  A generic note taking application. 'name' does not contain spaces
  

  1. A user should be able to add a note
    
      $ note <name> <value>
      $ note address HNo 33, Hyderabad
      $ note electricity-no 33213413

  2. A user should be able to pull up a note based on the name

      $ note -s address
      > should print
      HNo 33, Hyderabad

  3. A user should be able to pull up notes on partial name matches
      
      $ note -s add
      > should print the address if there is a unique match
      > if there are multiple matches print the matching notes

  4. A user should be able to delete a note
    
      $ note -d <name>
      $ note -d address

  5. A user should be able to list all the notes

      $ note
      > should list all the notes

  6. A user should be able to search in the note values or names

      $ note -q foo
      > show all notes containing the name 'foo' or value 'foo'

  7. A user should be able to add a multi line note

      $ note -m address
      HNo 10-10-111
      Hyderabad
      AP
      ^D
