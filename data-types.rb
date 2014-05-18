#!/usr/ruby

# Duck Typing: if it walks like a duck, talks like a duck, it's a duck.
# We use this in Ruby to mean that we don't have to tell Ruby "this is a string". Instead,
# we simply put quotes around several characters or words and Ruby infers it's a string.

# Here are a few of the data types that Ruby has built in. Sometimes, they aren't always specified
# by Ruby how you'd expect. We'll cover those in more detail later.

string = "Hello world"
puts "'#{string}' is a #{string.class}"

symbol = :animal
puts "'#{symbol}' is a #{symbol.class}"

integer = 1
puts "'#{integer}' is a #{integer.class}"

floating_point = 1.5
puts "'#{floating_point}' is a #{floating_point.class}"

array = [1, 2, 3]
puts "'#{array}' is a #{array.class}"

hash = {"dog" => 1, "cat" => 2}
puts "'#{hash}' is a #{hash.class}"
