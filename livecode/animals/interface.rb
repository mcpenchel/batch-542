require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

# Iterate over it and puts the sound each animal make

simba = Lion.new("Simba")
nala  = Lion.new("Nala")
timon = Meerkat.new("Timon")
puma  = Warthog.new("Puma")

array = [simba, nala, timon, puma]

# Duck Typing (google this concept later, plz!!)
# If it answers to the method .quack, I don't care if it's a duck
# or whatever, or a coward, I will execute the .quack method
array.each do |animal|
  puts animal.talk
end