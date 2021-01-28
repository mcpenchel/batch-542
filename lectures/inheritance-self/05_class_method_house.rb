class House
  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
end

puts House.price_per_square_meter("Paris")
puts House.price_per_square_meter("Brussels")
puts House.price_per_square_meter