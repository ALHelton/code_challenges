# input: one string
# output: one string

# NOTES:
# method takes the string, turns into an array of characters
# iterate through the array with index position
# if array has 1 element, return that element
# if array has 2 elements, return the element if the one before is the same letter
# # otherwise, return empty string
# 
# if array has 3+ elements
# new empty string variable outside of iteration
# make new variable with array, and element inside array
# loop a = index + 1 (shift into new array) AND b = index - 1 (pop into new array)
# break loop until a and b do not equal each other
# 
# if variable inside loop has more elements than string variable has characters,
# make string variable equal new element array.join

def longest_palindrome(s)
  s_array = s.chars
  longest_string = ""

  if s_array.size > 2
    s_array.each_with_index do |char, index|
      new_array = []
      right_index = index + 1
      left_index = index - 1

      until s_array[right_index] != s_array[left_index] || s_array[right_index].size > s.length
        new_array << char
        new_array << s_array[right_index] if right_index < s.length
        new_array.unshift(s_array[left_index]) if left_index >= 0
        right_index += 1
        left_index -= 1
      end
      longest_string = new_array.join if longest_string.length < new_array.size
    end
    longest_string
  elsif s_array.size == 2 && s_array[0] == s_array[1]
    s
  else
    "No palindromic substrings"
  end
end

p longest_palindrome("b")
# => "No palindromic substrings"

p longest_palindrome("ba")
# => "No palindromic substrings"

p longest_palindrome("bb")
# => "bb"

p longest_palindrome("babad")
# => "bab" OR "aba"

p longest_palindrome("cbbd") # NOT WORKING
# => "bb"