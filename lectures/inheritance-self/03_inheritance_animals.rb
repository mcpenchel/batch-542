# "Cascade" inheritance (one inherits from the other, that inherits...)

class Animal

  attr_reader :name, :family

  def initialize(name, family)
    @name = name
    @family = family
  end

  def living_being?
    true
  end

end

class Mammal < Animal

  def initialize(name)
    super(name, "Mammal")
  end

  def lay_eggs?
    false
  end

  def give_birth?
    true
  end

end

class Lion < Mammal

  def initialize
    super("Lion")
  end

  def roar
    "Grauuurrr"
  end

end

class Platypus < Mammal

  def give_birth?
    false
  end

  def lay_eggs?
    true
  end

end

simba = Lion.new
puts simba.roar
puts simba.give_birth?
puts simba.lay_eggs?
puts simba.living_being?

puts "--------------"

platypus = Platypus.new("Platypus Jr")
puts platypus.give_birth?
puts platypus.lay_eggs?

puts platypus.name
puts platypus.family