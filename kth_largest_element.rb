# input: 2 arguments
# # 1: array of integers
# # 2: integer

# NOTES:
# takes k integer
# sorts the array, reverses
# iterates through the array
# finds the kth integer index in the array
# returns the number in that place
# (duplicates count as separate number, not bundled together)

def find_kth_largest(nums, k)
  sorted_nums = nums.sort.reverse
  k_index = k - 1
  sorted_nums[k_index]
end

p find_kth_largest([3,2,1,5,6,4], 2)
# => 5

p find_kth_largest([3,2,3,1,2,4,5,5,6], 4)
# => 4