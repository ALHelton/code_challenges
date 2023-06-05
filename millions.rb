# given three arrays of equal size. 
# Each array has 1 million RANDOM integer values
# each array is already sorted in ascending order and no individual array has any duplicate values
# write a method that will return an array of any/all values which are present in all three arrays

# EXAMPLE
    # nums_1 = [1, 2, 4, 5, 8]
    # nums_2 = [2, 3, 5, 7, 9]
    # nums_3 = [1, 2, 5, 8, 9]
    # find_matches(nums_1, nums_2, nums_3)
    # => [2, 5]


# assumptions:
# -----------------
# all will be positive integers ( based on the example given )
# no duplicate values within a single array, but also doesn't need to be consecutive ( nums_3 example )
# all numbers are whole numbers ( example )
# The input is multiple arrays (3 in the example) - comparing 3 arrays in the example
# input arrays may or may not be the same length - in the example they are, so I will consider this an edge case
# the output is a single array of all common numbers between the arrays given as arguments
# the output array will also be in ascending order
# the output array will not have duplicate numbers
# The method will be named find_matches()

# pseudocode:
# -----------------
# make method called find_matches that takes 3 arguments - arrays
# need a way to put all numbers in all arrays into just one array
# method to determine if the numbers in the combined array are duplicated 3 times
# if a number is duplicated 3 times, it will be put into a new array
# the new array is the return value
# group_by enumerable to group letters by count
# take the count of those letters - if less than the count of initial arrays, then it is not included in the final array

def find_matches(nums_1, nums_2, nums_3)
  combined = nums_1 + nums_2 + nums_3

  grouped = combined.tally

  final_array = []

  grouped.each do |num, count|
    final_array << num if count == 3
  end
end


nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]

puts find_matches(nums_1, nums_2, nums_3)