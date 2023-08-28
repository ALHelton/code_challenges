# input: array of integers
# output: one integer

# NOTES
# input array is unsorted
# only able to iterate once for 0(n) complexity --> Solve first, worry about later
# there can be duplicate numbers - duplicates count as one in sequence -
# ex: 0, 0, 1, 2 => 3
# can be negative numbers
# input array can be empty
# assumption that numbers are whole - no floats

# PSEUDOCODE
# sort array
# slice_when to get array of cons arrays
# ex: arr.slice_when{ |prev, current| current != prev + 1 }.to_a
# max_by to find array with the longest length

