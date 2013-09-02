 1. Write a validator function which can tell you if an attribute is present
    
    e.g.

    in a class `Dog`, I should be able to have code like the following

    ~~~ruby
    class Dog
      include PresenceValidator

      validates_presence_of :name

      attr_accessor :name
    end

    d = Dog.new
    d.valid? #=> should return false
    d.errors #=> should return ['Name cannot be empty']

    d = Dog.new
    d.name = 'Fido'
    d.valid? #=> should return true
    d.errors #=> should return []
    ~~~

2. Write a validator function which tells you if an attribute is within a range
   of characters

    ~~~ruby
    class Dog
      include PresenceValidator

      validates_minimum_length :name, 10

      attr_accessor :name
    end

    d = Dog.new
    d.name = 'aaaaaaaaaaa'
    d.valid? #=> should return false
    d.errors #=> should return ['Name cannot be more than 10 characters']

    ~~~

3. Write a validator for `validates_maximum_length`
4. Write a validator for format which can match against a pattern

  ~~~ruby

    validates_format :name, /[0-9]+/

  ~~~

5. Write a validator for inclusion

  ~~~ruby

    validates_inclusion :type, ['Alsatian', 'Doberman', 'Stray']

  ~~~

6. Write a validator to check for numericality

  ~~~ruby

    validates_numericality :age

  ~~~
