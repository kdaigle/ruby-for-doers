#!/usr/bin/env ruby

# Remember how we were working with strings earlier?
greeting = "Good morning."

# And remember how we can call methods on that string?
puts greeting.size

# Well, how does that actually work? The string is an object. It's an "instance" of a string.
# It knows it's functionality from... well, how does it know what it can do?

# We can check what a string is like...
if greeting.instance_of?(String)
  puts "Yup, I'm an instance of String alright."
end

# If our greeting variable is an instance of String (notice the capitalization of String), what is
# String?
if String.is_a?(Class)
  puts "You're right! String is a class."
end

# Classes are a grouping of functionality and they allow us to create objects (or instances) of
# itself. So, let's create a String the manual way.
string = String.new("I'm a string.")
puts string

# See! You can call `.new` on the String class to make a new instance of String. Now that we have a
# string, we can call a method on it too! Let's try the `clear` method of string.
string.clear
puts "Now, our string equals: '#{string}'"

# By using `clear`, we called the method `clear` on an instance of the String class. The method
# clears the string so you can see it's empty now.

# Everything in Ruby starts with a class. Let's make our own simple class.
class Car
end

# Now we have a Car class. You can think of the class as a way to generate a new car that has
# various options and toggles. Let's try making a new instance of a Car.
car = Car.new

# That was easy! Our Car class automatically gets a few methods. One of those is `inspect`. We can
# use `inspect` to see what our car looks like.
puts car.inspect

# We now have a very simple boring car. Let's add some methods to the Car class.
class Car
  def start_engine
    @engine_running = true
  end
end

# We now have a `start_engine` method for our car instance. We can call the method on the car now.
car.start_engine
puts car.inspect

# Well, there we go! We've started our car's engine. What's the best way to see if the car's engine
# is running. Let's add another method!
class Car
  def is_the_engine_running?
    @engine_running
  end
end

# Now our Car has two methods on it: `start_engine` and `is_the_engine_running?`. Let's check
# if the engine is running.
if car.is_the_engine_running?
  puts "Yup, we're idling all 500 hoursepower over here."
end
