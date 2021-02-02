class Patient
  attr_reader :name, :blood_type
  attr_accessor :room, :id # reader + writer

  def initialize(attributes = {})
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type]
    @room  = attributes[:room]
    @id    = attributes[:id]
  end

  # Getter method (attr_reader)
  def cured?
    @cured
  end

  def cure!
    @cured = true
  end

end