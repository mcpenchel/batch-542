class Pet < ApplicationRecord

  SPECIES = ["Giraffe", "Dog", "Cat", "Lizard", "Snake", "Bird", "Hamster"]

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

end
