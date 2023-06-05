# method that takes in an integer and returns the next palindrome
# only whole numbers
# no decimals, no negatives

    # find_next_palindrome(100)
    # => 101

    # find_next_palindrome(101)
    # => 111


# PSEUDOCODE:
# only forward - ascending order
# input - whole integer (no dec, no neg)
# output - whole integer (no dec, no neg)

# method/way to determine if a number is a palindrome
# .reverse
# don't have to  determine if the input is a palindrome -
# need to determine the first number after that is a palindrome
# loop - until a number is a palindrome 
# the start of the loop begins at the argument integer

def find_next_palindrome(int)
  require 'pry'; binding.pry
  loop do
    int += 1
    return int if int.to_s == int.to_s.reverse
  end
end

puts find_next_palindrome(100)
#   # => 101

    # puts find_next_palindrome(101)
    # => 111

    # wrong? 
    # int +1 