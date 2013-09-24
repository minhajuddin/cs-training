# Notes app

  A generic note taking application. 'name' does not contain spaces
  

  - A user should be able to add a note
    
~~~sh
      $ note <name> <value>
      $ note address HNo 33, Hyderabad
      $ note electricity-no 33213413
~~~

  - A user should be able to pull up a note based on the name

~~~sh
      $ note -s address
      # should print
      HNo 33, Hyderabad
~~~

  - A user should be able to pull up notes on partial name matches
      
~~~sh
      $ note -s add
      # should print the address if there is a unique match
      # if there are multiple matches print the matching notes
~~~

  - A user should be able to delete a note
    
~~~sh
      $ note -d <name>
      $ note -d address
~~~

  - A user should be able to list all the notes

~~~sh
      $ note
      # should list all the notes
~~~

  - A user should be able to search in the note values or names

~~~sh
      $ note -q foo
      # show all notes containing the name 'foo' or value 'foo'
~~~

  - A user should be able to add a multi line note

~~~sh
      $ note -m address
      HNo 10-10-111
      Hyderabad
      AP
      ^D
~~~

## Bonus

  - If a user enters an existing 'name' then overwrite its value
    
~~~sh
      $ note name Khaja
      $ note name Jack 
      $ note -s name
      # should print Jack
~~~

  - Allow entering of values without putting them in double quotes
    
~~~sh
      #instead of this
      $ note name "Khaja Minhajuddin"
      $ note name "Khaja Minhajuddin"
      #allow this
      $ note name Khaja Minhajuddin
~~~

  - Cleanup the code
  - Print the name value in a nice format
  - Search should be case insensitive
  - At the time of deletion print the current value of the note

## Bonus 2

  - Add ability to namespace the tokens
    
~~~sh
    $ note personal.name Khaja Minhajuddin
    $ note personal.email minhajuddin@mailinator.com
    $ note personal.age 28
    $ note -s personal
    # should print
    #   name: Khaja Minhajuddin
    #   email: minhajuddin@mailinator.com
    #   age: 28
    $ note -s personal.name
    # should print
    # Khaja Minhajuddin
~~~
