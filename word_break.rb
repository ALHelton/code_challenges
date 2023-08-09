# NOTES
# input: one string, one array of strings (2 inputs) 
# output: boolean

# input string must have or be between 1 and 300 characters in length
# input array must have or be between 1 and 1000 elements
# each string in the array must be unique and have or be between 1 and 20 characters
# all input strings must be only lowercase english letters
# when input is split based on the dictionary, it can reference one string in the array multiple times
# 
# Cannot reuse letter in 2 different array strings to make the whole word, must be complete
# ex: "labradoodle" ["lab", "rad", "doodle"] (the "d" in rad and doodle is reused)
# Assuming matches in array can be out of order

# PSEUDOCODE
# make a method that takes the 2 inputs as an argument
# iterate through the dictionary
# split the input string based on each dictionary word and continue to add them to an array
# at the end, iterate through that new array
# compare each match to see if they fit together to equal the whole input string

def word_break(s, word_dict)
  matches = word_dict.select do |str|
    str if s.include?(str)
  end


  require 'pry'; binding.pry
end

# p word_break("leetcode", wordDict = ["leet","code"])
p word_break("leetcode", wordDict = ["leet", "tco", "code"])

# p word_break("applepenapple", wordDict = ["apple","pen"])
# p word_break("catsandog", wordDict = ["cats","dog","sand","and","cat"])