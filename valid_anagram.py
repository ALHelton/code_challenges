from collections import Counter
# input: two strings s and t
# output: boolean
# return true if t is an anagram of s, false otherwise.

# Constraints:
# 1 <= s.length, t.length <= 5 * 10^4
# s and t consist of lowercase English letters.

def is_anagram(s, t):
  new_s = Counter(list(s))
  new_t = Counter(list(t))
  return new_s == new_t

# print(is_anagram("anagram", "nagaram"))
print(is_anagram("rat", "car"))