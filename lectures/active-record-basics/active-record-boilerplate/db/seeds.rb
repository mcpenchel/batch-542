# This is where you can create initial data for your app.
require 'faker'

puts "Creatings some restaurants..."

100.times do
  r = Restaurant.new(
    name: "#{Faker::Movies::LordOfTheRings.character}'s #{Faker::Company.name}",
    address: Faker::Movies::LordOfTheRings.location,
    rating: rand(0..5)
  )
  r.save
end

puts "Finished creating some restaurants!!!"