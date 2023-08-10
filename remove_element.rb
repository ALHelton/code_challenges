# input: 2 arguments -> 1st: array, 2nd: integer
# output: one integer

# NOTES
# 2nd argument int tells you what number to remove from the array
# must delete every occurence of that int in array,
# then move all remaining ints to the left if there are empty spaces
# must keep the open spaces in the array, marked by an underscore
# must return how many int values there are left in the array


def remove_element(nums, val)
  
end

p remove_element([3,2,2,3], 3)
# => 2 (nums = [2, 2, _, _])

p remove_element([0,1,2,2,3,0,4,2], 2)
# => 5 (nums = [0, 1, 3, 0, 4, 2])