musicians = ["Robert Plant", "Jimmy Page", "John Bonham", "Jon Paul Jones"]

# Map returns a transformed array by applying the code from the block.
# Thing is, the last line of the block is what matters!

# Remember, the block is like an anonymous method.. So the last line executed
# is the one that counts when we're thinking of the "return" situation (;

other_musicians = musicians.map do |musician|
  first_name = musician.split.first
  last_name  = musician.split.last

  "#{first_name.capitalize} #{last_name.upcase}"
end

p other_musicians