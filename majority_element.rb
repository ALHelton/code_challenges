# input: array of integers
# output: integer

# NOTES:
# Will always be a number that appears most in array
# need a way to count how many times each element appears in an array
# could put into a hash with the number as a key, and value as the count
# then need to find the max value, and return the key

def majority_element(nums)
  nums_count = nums.tally
  nums_count.key(nums_count.values.max)
end

p majority_element([3,2,3])
# => 3

p majority_element([2,2,1,1,1,2,2])
# => 2


# ------ SOLUTION ONE ---------

# def majority_element(nums)
#   nums_count = nums.tally

#   max_pair = nums_count.max_by do |key, value|
#     value
#   end

#   max_pair[0]
# end