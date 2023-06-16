# Given an array nums containing n distinct numbers in the range [0, n], 
# return the only number in the range that is missing from the array.

# @param {Integer[]} nums
# @return {Integer}

def recursion(num)
  return 0 if num == 0
  num + recursion(num - 1)
end

def missing_number(nums)
  n = nums.length
  target = recursion(n)
  actual = nums.sum
  target - actual
end

p missing_number([9,6,4,2,3,5,7,0,1])
# => 8