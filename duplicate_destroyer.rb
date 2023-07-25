# input: array of numbers in increasing order
# output: new array with only unique numbers, in ascending order

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  nums.uniq!
  nums.length
end

# p remove_duplicates(nums = [1,1,2])
# p nums

p remove_duplicates(nums = [0,0,1,1,1,2,2,3,3,4])
p nums