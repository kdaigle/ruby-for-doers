#!/usr/bin/env ruby

# Sometimes, a simple `if then` statement isn't useful enough. You may have mulitple branches
# that need to be considered. That's when a case statement is useful.

dog = "woof"

case dog
when "woof"
  puts "Woof! Woof! ::grown::"
when "meow"
  puts "Meow... meow... ::prrr::"
else
  puts "I don't know what to say..."
end
