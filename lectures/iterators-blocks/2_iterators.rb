musicians = ["Robert Plant", "Jimmy Page", "John Bonham", "Jon Paul Jones"]

# Each is an Iterator Method, that applies code to every element
# and RETURNS the original array

musicians.each do |musician|
  puts "Greetings, #{musician}"
end

# Each with index -> |element_of_array, index_of_the_element|

musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}"
end

# Map -> returns a transformed array by applying the block code to every element 

musicians_first_names = musicians.map do |musician|
  musician.split[0]
end

# Count (allows us to provide a rule for counting), returns an integer

musicians.count do |musician|
  # your condition for counting!
  musician[0] == "J"
end

musicians.count do |musician|
  musician.split.size == 3
end

# Select filters down the array by just picking the elements that match the
# given condition of the block, returns an array

two_named_musicians = musicians.select do |musician|
  musician.split.size == 2
end