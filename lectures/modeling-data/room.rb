require_relative 'patient'

class Room
  # We're done with the STATE (attributes)
  attr_reader :capacity, :patients, :number
  attr_accessor :id

  def initialize(attributes = {})
    @number   = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
    @id = attributes[:id]
  end

  # Behavior (Instance methods)
  def full?
    @capacity == @patients.size
  end

  def add_patient(patient)
    if full?
      fail Exception, "Room is full"
    else
      @patients << patient
      patient.room = self
    end
  end

end

# rock_n_roll_room = Room.new(number: "Rock A1", capacity: 2)
# pop_room = Room.new(number: "Pop B2", capacity: 10)

# ozzy = Patient.new(name: "Ozzy Osbourne")
# hendrix = Patient.new(name: "Jimi Hendrix")
# joplin = Patient.new(name: "Janis Joplin")

# rock_n_roll_room.add_patient(ozzy) # self becomes rock_n_roll_room
# rock_n_roll_room.add_patient(joplin) # self becomes rock_n_roll_room

# p ozzy.room.number

# rock_n_roll_room.patients.each do |patient|
#   p patient.name
# end