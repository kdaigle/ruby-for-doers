#!/usr/bin/env ruby

# If you're using Ruby almost always with Rails, it can be hard to know where the Ruby
# stops and the Rails begins. This is *really* noticeable with `active_support`. You can read
# more about Active Support's core extensions at http://guides.rubyonrails.org/active_support_core_extensions.html.

# Have you ever used `blank?` or `present?` before? Those are actually defined within active_support.
# That means you won't have access to them in a Ruby only environment.
empty_array = []
begin
  empty_array.blank?
rescue => error
  puts error.message
end

# If you want to use Active Support within your Rails projects, you can require the parts of it
# that you need. Now, let's try calling `blank?` again.
require 'active_support'
require 'active_support/core_ext/object/blank'

if empty_array.blank?
  puts "That array sure is pretty blank."
end

# However, a lot of the methods within ActiveSupport have equivalents in Ruby that maybe aren't as
# pretty. For example, need to know if that Array is empty? http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-empty-3F
if empty_array.empty?
  puts "Yup, it's empty!"
end

# You can also find similar methods for object types like Strings. http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-empty-3F
empty_string = ""
if empty_string.empty?
  puts "Yup, it's empty!"
end

# But be careful: a lot of what makes Active Support useful is how it's methods cover a lot more
# 'human' situations. For example, Ruby's String#empty? method won't consider a string with just
# spaces to be empty but Active Support's #blank? method will.
just_spaces_string = " "
if just_spaces_string.empty?
  puts "We won't print this because the string isn't technically empty."
end
if empty_string.blank?
  puts "It's not empty, but it is blank!"
end

# But, like I said, there is always a way around using Active Support.
if just_spaces_string.strip.empty?
  puts "Yup, if you strip the string of it's useless leading and trailing spaces, it's empty."
end
