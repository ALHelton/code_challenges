# input: two strings s and t
# output: boolean
# return true if t is an anagram of s, false otherwise.

# Constraints:
# 1 <= s.length, t.length <= 5 * 10^4
# s and t consist of lowercase English letters.

def is_anagram(s, t)
  new_s = s.split("").tally
  new_t = t.split("").tally
  new_s == new_t
end

# p is_anagram("anagram", "nagaram")
p is_anagram("rat", "car")