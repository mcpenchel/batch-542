# Write a game where the player has to guess a random price
# between 1 and 100 chosen by the program.

# The program should keep asking until the player guesses the
# right price. When the guess is right, the program displays
# how many guesses it took the player to win.

# Pseudo-code 

# 1) Compute a random number between 1 and 100 (and store it into a
# variable)

computer_choice = rand(1..100)

# >> this is the first time something gets repeated!
# >> THIS IS THE BEGINNING OF THE LOOP

# We set the initial value, so that the condition
# of our while loop is met at least once!
# This way ruby will enter the loop at least once.
player_choice = nil
count = 0

while computer_choice != player_choice
  puts "What's your guess?"
  player_choice = gets.chomp.to_i

  count += 1

  if player_choice > computer_choice
    puts "You should guess something smaller"
  elsif player_choice < computer_choice
    puts "You should guess something bigger"
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