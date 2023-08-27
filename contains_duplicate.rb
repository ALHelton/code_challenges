# input: array of integers
# output: boolean

# NOTES
# need to take the array and count how many times each element appears in array
# put into a hash with key being the number, value the count of times in nums array
# need to iterate through the hash 
# if any number's value count is > 1, return false
# if number's value count < 1, return true


def contains_duplicate(nums)
  num_count = nums.tally
  num_count.each do |num|
    if num[1] > 1
      return true
    else
      return false
    end
  end
end

p contains_duplicate([1,2,3,1])
# => true

p contains_duplicate([1,2,3,4])
# => false

p contains_duplicate([1,1,1,3,3,4,3,2,4,2])
# => true