puts "What's your age?"
age = gets.chomp.to_i

# gets.chomp always brings us a string
# if we want to compare that value with an integer, we need to
# convert it to an integer

if age >= 18
  puts "You can vote"
else
  puts "You can't vote"
end