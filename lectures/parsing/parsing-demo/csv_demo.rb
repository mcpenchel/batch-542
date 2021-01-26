require 'csv'

##############################################
########## READING FROM A CSV FILE ###########
##############################################

filepath    = 'data/beers.csv'

# This works for the well-formatted CSV files that have everything
# inside double quotes, and every column separated by a ,
CSV.foreach(filepath) do |row|
  # This block gets executed N times, where N is the number of rows
  # in the csv file
  puts "#{row[0]} - #{row[1]} - #{row[2]}"
  # What is row? It is like following:
  # 1st time -> ["Name","Appearance","Origin"]
  # 2nd time -> ["Pineapple Express","Yellow","Brazilian"]
  # and so on...
end

csv_options = {
  col_sep: ',',
  quote_char: '"',
  headers: :first_row # This allows us to read from row as a hash
}

CSV.foreach(filepath, csv_options) do |row|
  # This block gets executed N-1 times, where N is the number of rows
  # in the csv file (-1 because we skip the first_row, as it's headers (; )
  # What is row? It is like following:
  # 1st time -> {"Name" => "Pineapple Express", "Appearance" => "Yellow", "Origin" => "Brazilian" }
  # 2nd time -> {"Name" => "Heineken", "Appearance" => "Lager", "Origin" => "Netherlands" }
  # and so on...
  puts "#{row["Name"]} - #{row["Appearance"]} - #{row["Origin"]}"
end

##############################################
########### WRITING TO A CSV FILE ############
##############################################

csv_options = {
  col_sep: ',',
  quote_char: '"',
  force_quotes: true
}

# 'wb' # => For erasing and writing from scratch
# 'a'  # => For writing at the end of the file

CSV.open(filepath, 'wb', csv_options) do |csv|
  # This block gets executed only once
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Pineapple Express', 'Yellow', 'Brazilian']
  csv << ['Heineken', 'Lager', 'Netherlands']
  csv << ['Stella', 'Lager', 'Belgium']
  csv << ['Golden Draacht', 'IPA', 'Belgium']
end