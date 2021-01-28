require_relative 'animal'

class Warthog < Animal

  def talk
    "#{@name} grunts"
  end

end

# puma = Warthog.new("Puma")
# puts puma.name
# puts puma.talk
# puts puma.eat("lettuce")