# Notes app

  A generic note taking application. 'name' does not contain spaces
  

  1. A user should be able to add a note
    
~~~sh
      $ note <name> <value>
      $ note address HNo 33, Hyderabad
      $ note electricity-no 33213413
~~~

  2. A user should be able to pull up a note based on the name

~~~sh
      $ note -s address
      # should print
      HNo 33, Hyderabad
~~~

  3. A user should be able to pull up notes on partial name matches
      
~~~sh
      $ note -s add
      # should print the address if there is a unique match
      # if there are multiple matches print the matching notes
~~~

  4. A user should be able to delete a note
    
~~~sh
      $ note -d <name>
      $ note -d address
~~~

  5. A user should be able to list all the notes

~~~sh
      $ note
      # should list all the notes
~~~

  6. A user should be able to search in the note values or names

~~~sh
      $ note -q foo
      # show all notes containing the name 'foo' or value 'foo'
~~~

  7. A user should be able to add a multi line note

~~~sh
      $ note -m address
      HNo 10-10-111
      Hyderabad
      AP
      ^D
~~~

## Bonus

  1. If a user enters an existing 'name' then overwrite its value
    
~~~sh
      $ note name Khaja
      $ note name Jack 
      $ note -s name
      # should print Jack
~~~

  2. Allow entering of values without putting them in double quotes
    
~~~sh
      #instead of this
      $ note name "Khaja Minhajuddin"
      $ note name "Khaja Minhajuddin"
      #allow this
      $ note name Khaja Minhajuddin
  3. Cleanup the code
  4. Print the name value in a nice format
  5. Search should be case insensitive
  6. At the time of deletion print the current value of the note
