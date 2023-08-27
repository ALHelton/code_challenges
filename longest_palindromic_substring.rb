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

