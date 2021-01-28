# Class is a mold for creating Instances/Objects (two names for the same thing)
# Class defines the behavior and the state/attributes (two names for the same thing) of instances

# Instance method (def something end) are how we define behavior
# Instance variables (@var) are how we define state/attributes

# name, food_type, #location
class Restaurant

  attr_reader :location
  attr_accessor :name, :food_type # attr_reader + attr_writer

  # This methods gets executed when we do the Class.new
  def initialize(name, food_type, location)
    @name = name
    @food_type = food_type
    @location = location
  end

  def open?
    Time.now.hour >= 9 && Time.now.hour < 18
  end

end

amarelinho = Restaurant.new("Amarelinho", "Brazilian", "Glória")
carretao   = Restaurant.new("Carretão", "Churrasco", "Copacabana")

puts amarelinho.open?
puts carretao.open?

puts amarelinho.name
puts carretao.name