class FootballClub

  attr_reader :name, :number_of_fans

  def initialize(name, number_of_fans)
    @name = name
    @number_of_fans = number_of_fans
  end

  def self.sport
    # This is the "class" context
    "Football"
  end

  def presentation_v1
    # This is the "instance" context
    puts "This is #{@name}, with #{@number_of_fans} fans."
  end

  def presentation_v2
    # self.name only works because we have attr_reader :name
    # self.number_of_fans only works because we have attr_reader :number_of_fans
    puts "This is #{self.name}, with #{self.number_of_fans} fans."
  end
end


barcelona = FootballClub.new("Barcelona", 10_000_000)
# barcelona.sport => Doesn't work! sport is a Class method!
puts FootballClub.sport # This works (;

barcelona.presentation_v2
barcelona.presentation_v1
# puts barcelona.name