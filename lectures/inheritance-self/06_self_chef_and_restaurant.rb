# For understanding self, we need to understand the contexts
# of the methods. Which means, are they class or instance methods?

class Chef

  attr_reader :name, :specialty, :restaurant

  def initialize(name, specialty, restaurant)
    @name = name
    @specialty = specialty
    @restaurant = restaurant
  end

end

class Restaurant

  attr_accessor :name, :food_type
  attr_reader   :location, :chef

  # Instance method (special method, used for generating)
  def initialize(name, food_type, location, chef_name, chef_specialty)
    # Inside an Instance Method, self is the Instance itself
    @name = name
    @food_type = food_type
    @location = location
    @chef = Chef.new(chef_name, chef_specialty, self) # self => the restaurant instance itself we're creating

    @clients = []
  end

  # Instance method
  def add_client(client)
    self # => is the instance on which this method was called
    @clients << client
  end

  # Instance method
  def complete_description
    # self is the instance on which this method was called!
    puts self.name # if self is the instance, we're doing instance.name
    self.print_clients

    # self, for executing other instance methods, is optional
    # ruby is already adding the self. for you, without you knowing!
    puts name
    print_clients

    # Extra: remember that attr_writer can only be accessed within
    # an instance method if we use self.attr_name = "new value"
  end

  # Instance method
  def print_clients
    @clients.each_with_index do |client, index|
      puts "#{index + 1} - #{client}"
    end
  end

  # Class method
  def self.food_types
    self # => Restaurant
    ["Italian", "Churrasco", "Brazilian", "Fast Food", "Seafood"]
  end

end

amarelinho = Restaurant.new("Amarelinho", "Brazilian", "Glória - Rio de Janeiro", "Juan Rodriguez", "Cheap and delicious food")
# On the following, self in the method is the amarelinho instance
amarelinho.add_client("David")
amarelinho.add_client("Milene")

# amarelinho.complete_description

puts "Name of restaurant from the restaurant instance: #{amarelinho.name}"

puts amarelinho.chef.name
puts amarelinho.chef.specialty

puts "Name of restaurant from the chef: #{amarelinho.chef.restaurant.name}"

puts amarelinho.chef.restaurant.location

# amarelinho.add_client("Juan") => inside the add_client method, self is amarelinho
# carretao.add_client("Juan") => inside the add_client method self is carretao