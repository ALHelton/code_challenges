# input: string
# output: boolean

# NOTES
# input string is all lowercase english letters (no spaces)
# input string cannot be empty, must be at least 1 char
# substring can be used 2 or more times to complete the full string

# PSEUDOCODE
# get number of characters in the string, set to variable
# need to take the string, turn into array
# set new variable string to empty string
# until loop?
# character gets appended to new variable string until
# variable string can be divided from original string evently
# if evenly -> return true
# else false

def repeated_substring(s)
  substring = ""

  s.chars.each do |letter|
    substring = substring + letter
    if s.length % substring.length == 0 && substring.length > 3
      number_times = s.length / substring.length
      new_string = substring * number_times
      return true if s == new_string
      next
    end
  end

  false
end

p repeated_substring("abab")
# => true

p repeated_substring("aba")
# => false

p repeated_substring("abcabcabcabc")
# => true