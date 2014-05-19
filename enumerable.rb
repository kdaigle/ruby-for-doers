#!/usr/bin/env ruby

# Enumerable is a great module that's injected into a bunch of different Ruby objects.
# It lets you "enumerate" (or work through a list of things one by one) different types of objects.
# The best example is through the use of array.

animals = ["dog", "cat", "mouse", "rat", "bat"]

# Enumerable adds some great "fancy" methods to the otherwise plain Array object. One example
# of that is `all?`. http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-all-3F

# With `all?` we can see if every object in the array is "true". Or, we can use a block and check
# something specific of each item. We'll use `all?` to enumerate through the array and see if
# each item of the array is a String.
if animals.all? {|animal| animal.is_a?(String) }
  puts "Yup, those animals are all strings."
end

# You can also make your own objects act like Enumerables! First, let's create an Animal class.
class Animal
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

# Now we can create new animals.
animal = Animal.new("dog")
puts animal.inspect

# Why have one animal when you can actually have a set of animals! Let's implement something that
# we can enumerate on.
class AnimalSet
  def initialize
    @animals = []
  end

  def <<(animal)
    @animals << animal
  end

  # Let's make our own `each` method on AnimalSet. Now, we can have a set of animals and get one
  # at a time. Because the animals is ultimately just an array (look at the initialize method),
  # we're going to cheat a little bit and just take a block to AnimalSet's each method and then
  # pass it to the @animals' each method.
  def each(&block)
    @animals.each(&block)
  end
end

set_of_animals = AnimalSet.new
set_of_animals << Animal.new("dog")
set_of_animals << Animal.new("cat")
set_of_animals << Animal.new("mouse")

# Alright, now let's try to use the `all?` method on AnimalSet.
begin
  if set_of_animals.all? {|animal| animal.name.is_a?(String) }
    puts "Oh wait... we didn't add Enumerable yet."
  end
rescue => error
  puts error.message
end

# Whoops! Remember, enumerable is a module that's added to a class. It isn't it's own object like
# an array is. By injecting the module into Array, we're adding functionality to Array.

# Let's add Enumerable to Array now.
class AnimalSet
  include Enumerable
end

# Now that we included Enumerable into the AnimalSet class, our animal_set can do Enumerable things.
if set_of_animals.all? {|animal| animal.name.is_a?(String) }
  puts "Yup, all the Animal names' are strings."
end
