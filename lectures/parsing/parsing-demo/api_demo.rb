require 'json'
require 'open-uri'

# Example with Github API
url = 'https://api.github.com/users/ssaunier'

json_file_as_string = open(url).read

hash = JSON.parse(json_file_as_string)
puts hash["name"]
puts hash["company"]

# Example with Chuck Norris API
url = 'https://api.chucknorris.io/jokes/random'

json_file_as_string = open(url).read
hash = JSON.parse(json_file_as_string)

puts hash["value"]