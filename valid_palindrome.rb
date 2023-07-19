# input: one string
# output: boolean

# PSEUDOCODE
# need a method that will take in a string
# need to take the string, split into an array of characters
# make a variable with all letters in the alphabet
# iterate through the new array of characters, if the character is a letter of the alphabet, shovel to new array
# take new array and join all characters back into one string
# will reverse the modified string
# will compare the the reversed and non-reversed strings and determine if they are the same

def is_palindrome(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  initial_array = string.downcase.split("")

  new_string = initial_array.select do |char|
    char if alphabet.include?(char)
  end.join

  new_string == new_string.reverse
end

# p is_palindrome("race a car")
p is_palindrome("A man, a plan, a canal: Panama")
# p is_palindrome(" ")
