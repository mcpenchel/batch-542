require 'faker'

puts "Creating some restaurants..."

100.times do
  # TO-DO: Create 100 random restaurants
  r = Restaurant.new(
    name: "#{Faker::Games::SuperMario.character}'s #{Faker::Restaurant.name}",
    address: Faker::Games::SuperMario.location,
    food_type: Faker::Restaurant.type,
    rating: rand(0..5)
  )

  r.save!

end

puts "Finished creating some restaurants!!"