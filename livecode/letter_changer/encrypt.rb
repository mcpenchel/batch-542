def encrypt(sentence)
  chars = sentence.upcase.chars
  alphabet = ('A'..'Z').to_a

  # 43 characters
  chars.map do |char|
    if alphabet.include?(char)
      # 3.1) If the character is in the alphabet, we shift 3 to the left
      
      # We know the character is in the alphabet!
      # What now, so that we can shift?
      alphabet_index = alphabet.index(char)
      alphabet[alphabet_index - 3]
    else
      char
    end
  end.join
end

# Write an #encrypt method that takes a text parameter (string)
# and makes a 3-letter left shift in the alphabet:

# Pseudo-code
# 1) [OK] Find a way to get all the characters of that sentence into an array
# 2) [OK] Find a way to get the alphabet characters into an array

# 3) For each character, find the index in the alphabet
#     3.1) If the character is in the alphabet, we shift 3 to the left
#     3.2) If the character is NOT in the alphabet, we leave it as it is

# 4) Joining together the encrypted characters into a string 