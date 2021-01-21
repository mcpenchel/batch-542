musicians = ["Robert Plant", "Jimmy Page", "John Bonham", "Jon Paul Jones"]

# ... excludes the last element in the range
# musicians.size is 4, but the last index is 3
# so (0..musicians.size) would give us the wrong collection (0, 1, 2, 3, 4)
# but (0...musicians.size) is perfect for us: (0, 1, 2, 3)

for index in (0...musicians.size)
  musician = musicians[index]

  puts "#{index + 1}. Greetings, #{musician}"
end

for musician in musicians
  puts "Greetings, #{musician}"
end

puts musician