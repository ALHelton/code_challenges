# input: one string
# output: boolean

# NOTES
# brackets must be closed w/ same type
# must be correct order - one right after the other
# can have more than one type of bracket in the same string
# string length must be at least one, no more than 104
# string only has types of parenthesis (3 possible types)

# PSEUDOCODE
# split the string on every 2 characters
# for each element in the new array,
# if it is the same forward as reversed, 
# the element is acceptable, true if all are accepted
# false if there are elements that aren't accepted

VALID_PAIRS = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}

def valid_parenthesis(string)
  pairs = string.scan(/../)
  not_accepted = pairs.select do |pair|
    pair if pair.length < 2 || VALID_PAIRS[pair[0]] != pair[1]
  end

  not_accepted.empty?
end

p valid_parenthesis("()")
# => true

p valid_parenthesis("()[]{}")
# => true

p valid_parenthesis("(]")
# => false