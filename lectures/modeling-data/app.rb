require_relative 'room_repository'
require_relative 'patient_repository'
require_relative 'patient'
require_relative 'room'

# To test the load_csv
room_repo = RoomRepository.new('rooms.csv')
patient_repo = PatientRepository.new('patients.csv', room_repo)

p patient_repo.all

# To test the save_csv
bob = Patient.new(name: "Bob Dylan", blood_type: "C-", cured: true)
bob_room = Room.new(id: 3, number: "Bob's Room", capacity: 1)

bob_room.add_patient(bob)

patient_repo.add(bob)

# From now on,
# 1) Every model has an id
# 2) Every model's initialize method will accept attributes = {}
# 3) When loading an associated instance (like room), we load
# room_id.. So we need to find the Room with that room_id to actually
# associate it.
# PS: on csv, always associated_model_id ...
#     but on the actual code, we load the associated_model
#     by looking for that instance in it's repo
# 4) When saving to the CSV, we don't save the associated instance
# so.. we don't save the room. We save the room.id