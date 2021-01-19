# DRY - Don't Repeat Yourself

# name is a parameter
def greet_person(name)
  "Greetings #{name}." # last line of the method is returned by default
end

# Parameters and Arguments

puts greet_person("John")  # "John" is an argument
puts greet_person("Paul")  # "Paul" is an argument
puts greet_person("Ringo") # "Ringo" is an argument

puts "What's your name?"
first_name = gets.chomp

puts greet_person(first_name)

require 'date'

def tomorrow
  new_date = Date.today + 1
  new_date.strftime('%b %d of %Y') # https://apidock.com/ruby/DateTime/strftime
end

puts tomorrow

# Some conventions

this_is_a_good_variable_name = 43

def this_is_a_good_method_name
end

# method that ends with ? returns true or false
# method that ends with ! overwrites the value of the variable or object