# input: array of integers
# output: boolean

# NOTES
# always starting at the first index
# Numbers are always positive
# assumption that numbers are always whole (no floats)
# each number in array must be at least 0, and max 104
# Always be at least one number in the input array, no more than 104
# you can always move less than or equal the number, not more
# you cannot "save" jumps - ex:
# if you move less than the number, the remaining doesn't count
# towards your next jump on another number

# PSEUDOCODE
# need to set a variable with a count of 0
# iterate through the array
# if the variable count is less than the original number, can keep moving next
# if you land on a number and variable count is less than number, 
# should determine if remaining numbers could equal the size of the array

# ANOTHER APPROACH
# Need to get the array size
# find combination of numbers in the array that when added together 
# equal the array size
# return true if there is a possible combination
# false otherwise
# consideration: Needs to stay in order