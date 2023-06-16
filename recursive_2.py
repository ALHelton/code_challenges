# Given an array nums containing n distinct numbers in the range [0, n], 
# return the only number in the range that is missing from the array.

# @param {Integer[]} nums
# @return {Integer}

def recursion(num):
  if num == 0:
    return 0
  else:
    return num + recursion(num - 1)

def missing_number(nums):
  n = len(nums)
  target = recursion(n)
  actual = sum(nums)
  return target - actual

    

print(missing_number([9,6,4,2,3,5,7,0,1]))
# => 8

# print(recursion([9,6,4,2,3,5,7,0,1]))