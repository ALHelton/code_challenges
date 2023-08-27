# input: 4 arguments
# # 1: array of integers (can be empty array)
# # 2: integer
# # 3: array of integers (can be empty array)
# # 4: integer

# NOTES
# method takes the second array and shovels each element into the first
# sorts the first array
# zeros are seen as placeholder, should be taken out in final array
# the output is still nums1, not new array

def merge(nums1, m, nums2, n)
  nums2.each {|num| nums1 << num }
  nums1.delete(0)
  nums1.sort
end


p merge([1,2,3,0,0,0], 3, [2,5,6], 3)
# => [1,2,2,3,5,6]

p merge([1], 1, [], 0)
# => [1]

p merge([0], 0, [1], 1)
# => [1]


# ------------- SOLUTION ONE -------------
def merge(nums1, m, nums2, n)
  new_array = (nums1 << nums2).flatten
  nums1 = new_array.select do |num|
    num if num > 0
  end.sort
end