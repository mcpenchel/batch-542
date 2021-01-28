require_relative 'animal'

class Meerkat < Animal

  def talk
    "#{@name} barks"
  end

end

# timon = Meerkat.new("Timon")
# puts timon.eat("fruit")
# puts timon.name
# puts timon.talk