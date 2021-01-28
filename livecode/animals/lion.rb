require_relative 'animal'

class Lion < Animal

  def eat(food)
    "#{super(food)}. Law of the Jungle!"
  end

  def talk
    "#{@name} roars"
  end

end

# simba = Lion.new("Simba")
# puts simba.name
# puts simba.talk
# puts simba.eat("gazelle")