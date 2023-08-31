# input: 2 arguments:
# 1 - sorted array of distinct integers
# 2 - integer - target number
# output: integer - index position

# NOTES
# array is in order, but not necessarily sequential
# no repeats of numbers
# based on the number, must find what index position 
# in the input array it is located
# if it doesn't exist in the array, 
# must find the position where it would exist if it were

# PSEUDOCODE
# need to determine if the number is in the array and 
# return the index position immediately if it is without further operation
# if it is not,
# need to locate the next largest number in the array
# max_by enumerable to find maximum value below the target number?
# Then find the position of that number in the array and return 
# that index + 1

