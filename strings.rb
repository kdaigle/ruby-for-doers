#!/usr/bin/env ruby

# A String is a simple collection of characters. Here we assign the variable first_name to "Kyle".
first_name = "Kyle"
puts first_name

# You can also use single quotes to build strings (more on this below.)
first_name = 'Kyle'
puts first_name

# You can add multiple strings together to form new strings.
hello_world = 'Hello' + ' ' + 'World'
puts hello_world

# You can also put variables within a string like below. This is called "string interpolation".
# The string will get evaluated and whatever variable or expression is within the '#{}' will get
# replaced with it's value.
greeting = "Hello, #{first_name}"
puts greeting

# However, string interpolation only works when you use double quotes ("") and not single quotes ('').
# This is why sometimes you'll see single quotes used quite a bit in things like Gemfiles where
# you don't need string interpolation.
greeting = 'Hello, #{first_name}'
puts greeting
