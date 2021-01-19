# Write a game where the player has to guess a random price
# between 1 and 100 chosen by the program.

# The program should keep asking until the player guesses the
# right price. When the guess is right, the program displays
# how many guesses it took the player to win.

# Pseudo-code 

# 1) Compute a random number between 1 and 100 (and store it into a
# variable)
min = 1
max = 10000
computer_choice = rand(min..max)

# >> this is the first time something gets repeated!
# >> THIS IS THE BEGINNING OF THE LOOP

# We set the initial value, so that the condition
# of our while loop is met at least once!
# This way ruby will enter the loop at least once.
player_choice = nil
count = 0

puts "Do you want to play? [Y/n]"
answer = gets.chomp

while computer_choice != player_choice
  if answer == "Y"
    puts "So what's your number?"
    player_choice = gets.chomp.to_i
  else
    player_choice = (min + max) / 2
  end

  count += 1

  if player_choice > computer_choice
    max = player_choice
    puts "Go smaller" if answer == "Y"
  elsif player_choice < computer_choice
    min = player_choice
    puts "Go bigger" if answer == "Y"
  end
end

puts "Congratulations! You got it right."
puts "The number was #{computer_choice}."
puts "You got it right in the #{count} attempt."

# 2) Ask the user for his/her guess (and store it into a variable)

# 3) Compare the numbers (and count the attempts)
# 3.1) if it's the same, congratulate the user and show him/her
#      the number of attempts
# 3.2) if it's not the same, ask again
# >> THIS IS THE END OF THE LOOP