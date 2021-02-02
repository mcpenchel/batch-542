require 'csv'
require_relative 'room'

class RoomRepository

  def initialize(csv_file_path)
    @rooms = []
    @csv_file_path = csv_file_path

    load_csv
  end

  def find(room_id)
    # find iterator method returns => first item that meets the criteria
    @rooms.find { |room| room.id == room_id }
  end

  private
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
      row[:capacity] = row[:capacity].to_i

      # I need to send a Room instance to Patient.new, not room_id
      @rooms << Room.new(row)
    end
  end

end


