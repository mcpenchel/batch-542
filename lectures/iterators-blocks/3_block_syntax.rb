musicians = ["Robert Plant", "Jimmy Page", "John Bonham", "Jon Paul Jones"]

# Multi-line block -> when we have more than one line inside the block 
# (which means, between do and end)
# we can't convert it to the other syntax...
musicians.each do |musician|
  first_name = musician.split.first
  last_name  = musician.split.last

  puts "Greetings, #{first_name} from the #{last_name} family"
end

######################################################################

# Multi-line block -> if we just have one line block, we can convert it!

musicians.each do |musician|
  puts "Greetings, #{musician}"
end

# is the same as the following code, using the Single-line block
musicians.each { |musician| puts "Greetings, #{musician}" }