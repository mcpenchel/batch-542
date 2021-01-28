# Implement a ::phyla class method which will return an array
# of the four phyla of the animal kingdom.

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end

  def self.phyla
    ["Ecdysozoa", "Lophotrochozoa", "Deuterostomia", "Porifera"]
  end
end


# puts Animal.phyla
# jabberjaw = Animal.new("Jabberjaw")
# lion      = Animal.new("Lion")
# velasco   = Animal.new("Velasco")

# puts jabberjaw.name
# puts lion.name
# puts velasco.name

# puts jabberjaw.eat("octopus")
# puts lion.eat("cat")
# puts velasco.eat("worm")