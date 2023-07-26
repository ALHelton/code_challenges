# input: array of strings
# output: string with letters in common at the start of each word
# if no letters in common, return empty string
# input strings have only lowercase english letters
# must return only lowercase english letters

# need a method that will look at each string in the array
# for each string, need to compare each letter with the letters of the strings that came before
# need to take the common letters only in order and put them in a new string

def longest_common_prefix(strs)
  longest_str = strs.max_by { |str| str.length }

  strs.each do |string|
    split = string.chars
    extra = (longest_str.chars - split).join
    longest_str.delete!(extra)
  end

  longest_str
end


p longest_common_prefix(["flower","flow","flight"])
# => "fl"

# p longest_common_prefix(["dog","racecar","car"])
# => ""