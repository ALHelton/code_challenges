# input: 2 arguments, both strings
# output: integer (either positive or negative)

# NOTES
# find index position in 1st argument string
# where second argument string starts
# return that index position
# if 2nd string doesn't appear in 1st string, return -1
# strings will only be lowercase english characters, no spaces
# string arguments will be more than 0, 104 characters at the most

# PSEUDOCODE
# make variable called indices, save to empty array
# take the first string, turn it into an array, save to variable
# take the second string, turn it into an array, save to variable
# iterate through the first string
# 
# for each letter, if the letter equals the first element in the second string,
# save index to a variable, next
# if next letter in the first array equals the next letter in the second array,
# next, don't alter indices variable
# if it doesn't equal, check the first index position of the second array with
# the current index of the first array, if they equal reset the variable to equal
# the current index position