require 'csv'
require_relative 'patient'

class PatientRepository

  def initialize(csv_file_path, room_repository)
    @patients = []
    @csv_file_path = csv_file_path
    @room_repository = room_repository

    load_csv
  end

  def all
    @patients
  end

  # This method would be called from the Controller
  # The Controller would ask for name, cured, blood_type, room
  # The Controller would NOT ask for the id..

  # So the patient arrives without an id :( It's up to us to provide it!
  def add(patient)
    next_id = @patients.empty? ? 1 : @patients.last.id + 1
    patient.id = next_id

    @patients << patient

    save_csv
  end

  private
  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
    
    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << ["id","name","cured","blood_type","room_id"]

      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.cured?, patient.blood_type, patient.room.id]
      end
    end
  end

  def load_csv
    csv_options = {
      col_sep: ',',
      quote_char: '"',
      headers: :first_row,
      header_converters: :symbol
    }
    
    CSV.foreach(@csv_file_path, csv_options) do |row|
      # "id", "name","cured","blood_type","room_id"
      {id: 1, name: "Ozzy Osbourne", cured: "false", blood_type: "A+", room_id: 1}
      row[:id]      = row[:id].to_i
      row[:room_id] = row[:room_id].to_i
      row[:cured]   = row[:cured] == "true"
      row[:room]    = @room_repository.find(row[:room_id])

      # I need to send a Room instance to Patient.new, not room_id
      @patients << Patient.new(row)
    end

    # Important Disclaimer: You won't need to do this!!!
    @patients.each do |patient|
      patient.room.add_patient(patient)
    end
  end
end


