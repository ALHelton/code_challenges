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

def longest_consecutive(nums)
  sorted = nums.sort
  grouped = sorted.slice_when { |prev, current| current != prev + 1 }.to_a
  largest = grouped.max_by { |arr| arr.size }
  largest.size
end

p longest_consecutive([100,4,200,1,3,2])
# => 4

p longest_consecutive([0,3,7,2,5,8,4,6,0,1])
# => 9