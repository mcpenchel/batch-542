class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def bark
    puts "Woof woof!"
  end
end

class GermanShepherd < Dog
end

class Poodle < Dog
  def bark
    puts "*Annoying* Woof woof!"
  end
end

GermanShepherd.new("Bob").bark
Poodle.new("Satan").bark