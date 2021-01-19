require 'date'

# Xmas is coming
# Write a method which returns the number of days until next Xmas.

def days_until_xmas(date = Date.today)
  year = date.year
  xmas_date = Date.new(year, 12, 25)

  if date > xmas_date
    (Date.new(year + 1, 12, 25) - date).to_i
  else
    (xmas_date - date).to_i
  end
end

puts days_until_xmas.class == Integer
puts days_until_xmas == 340
puts days_until_xmas(Date.new(2021, 12, 20)) == 5