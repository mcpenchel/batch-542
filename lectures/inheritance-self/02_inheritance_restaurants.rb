# Inheritance is super useful, because it allows us to DRY
# DRY -> Don't Repeat Yourself

class Restaurant

  attr_accessor :name, :food_type
  attr_reader   :location

  def initialize(name, food_type, location)
    @name = name
    @food_type = food_type
    @location = location

    @clients = []
  end

  def add_client(client)
    @clients << client
  end

  def print_clients
    @clients.each_with_index do |client, index|
      puts "#{index + 1} - #{client}"
    end
  end

  # To define a Class method, we do def self.name_of_method
  # For any kind of method, be it Class method or instance method,
  # we can have parameters / arguments.. It's up to us to think
  # if we need them or not.

  # In this case, we don't.
  def self.food_types
    ["Italian", "Churrasco", "Brazilian", "Fast Food", "Seafood"]
  end

end

# ChildClass < ParentClass
# or, we can read as
# SubClass < SuperClass
class Fastfood < Restaurant

  attr_accessor :preparation_time

  def initialize(name, location, preparation_time)
    # super(args) calls the parent class method with the same name
    super(name, "Fast Food", location)

    @preparation_time = preparation_time
  end

end

class StarRestaurant < Restaurant

  def initialize(name, food_type, location, stars)
    super(name, food_type, location)
    @stars = stars
  end

  def print_clients
    puts "You can't see Star Clients! Not public info, sorry."
  end

  def print_cool_description
    puts "We are #{@name}, located at #{@location}."
    puts "We are a #{@stars} stars restaurant. We serve #{@food_type} food."
  end

end

amarelinho = Restaurant.new("Amarelinho", "Brazilian", "Rio de Janeiro")
puts amarelinho.name

amarelinho.add_client("Juan")
amarelinho.add_client("Alston")

amarelinho.print_clients

puts "----------------------"

black = Restaurant.new("Black", "Austrian", "Austria")
puts black.name

black.add_client("Marta")

black.print_clients

puts "----------------------"

mcdonalds = Fastfood.new("McDonalds", "Rio", 15)
puts mcdonalds.name

mcdonalds.add_client("Matheus")

mcdonalds.print_clients

puts "----------------------"
# fogo_de_chao is an Instace of the StarRestaurant class
fogo_de_chao = StarRestaurant.new("Fogo de Chao", "Churrascaria", "Botafogo - RJ", 4)

puts fogo_de_chao.name

fogo_de_chao.add_client("Alston")
fogo_de_chao.add_client("Matheus")


# print_clients is an Instance method
fogo_de_chao.print_clients
fogo_de_chao.print_cool_description

# StarRestaurant.print_clients => Does not work.. Why?
# Because StarRestaurant is a class, not an instance..
# And print_clients is an instance method!!! Not a class method.

puts Restaurant.food_types
# fogo_de_chao.food_types => does not work!
# Because food_types is a CLASS method, not INSTANCE method