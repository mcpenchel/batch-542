require 'json'

##############################################
########## READING FROM A JSON FILE ##########
##############################################

filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)
hash = JSON.parse(serialized_beers)

##############################################
########### WRITING TO A JSON FILE ###########
##############################################

File.open(filepath, 'wb') do |file|
  # This block is not a loop! It gets executed only once.
  file.write(JSON.generate(hash))
end