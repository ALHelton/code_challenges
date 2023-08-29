# input: array of integers
# output: boolean

# NOTES
# always starting at the first index
# Numbers are always positive
# assumption that numbers are always whole (no floats)
# each number in array must be at least 0, and max 104
# Always be at least one number in the input array, no more than 104
# you can always move less than or equal the number, not more
# you cannot "save" jumps - ex:
# if you move less than the number, the remaining doesn't count
# towards your next jump on another number

# PSEUDOCODE
# need to set a variable with a count of 0
# iterate through the array
# if the variable count is less than the original number, can keep moving next
# if you land on a number and variable count is less than number, 
# should determine if remaining numbers could equal the size of the array

# ANOTHER APPROACH
# Need to get the array size
# find combination of numbers in the array that when added together 
# equal the array size
# return true if there is a possible combination
# false otherwise
# consideration: Needs to stay in order
# loop inside of iteration?

# have the single num, need to determine if it is greater than or equals 
# the length of the array - 1 - if it does, return true
# if not, need to look at all numbers within range jump 
# for each number within range, take go to the index of that number
# then count from that index to however many index positions forward determined by num
# if the number from there equals 0, and there is more remaining
# look at the next number in the range

def jump_game(array)
  new_array = array
  possible_jumps = nil
  
  new_array.each_with_index do |max_num, index|
    og_max_jump = index + max_num

    if og_max_jump == new_array.size
      return true
    else
      until possible_jumps == nil
        range_array = new_array.slice!(0..index - 1)
        possible_jumps = get_possible_jumps(range_array, max_num, index, og_max_jump)
        new_array = range_array
      end
    end
  end
  
  false
end

def get_possible_jumps(range_array, max_num, index, og_max_jump)
  jumps = []

  range_array[index + 1..max_num - 1].reverse_each.with_index do |n, n_index|
    true_n_index = (max_num - 1) - n_index
    next if n + true_n_index == og_max_jump

    jumps << [n, true_n_index]
  end

  jumps
end

# p jump_game([3,2,1,0,4])
# => false

p jump_game([2,3,1,1,4])
# => true



# array[index + 1..num - 1].reverse_each.with_index do |n, ind|
#   n_index = (num - 1) - ind

#   if n + n_index == array.size
#     return true
#   else 
#     array[n_index + 1..n - 1].reverse_each.with_index do |n2, ind2|
#       if n + n_index == array.size
#         return true
#       else
#         false
#       end
#     end
#   end
# end

# array[index + 1..num - 1].reverse_each.with_index do |n, ind|
#   n_index = (num - 1) - ind
#   if n_index + n == array.size || array[ind + n] + array[array[ind + n]] == array.size
#     return true
#   else
#   end
# end
# false

# def jump_game(array)
#   potential_jumps = []

#   array.each_with_index do |max_num, index|
#     og_max_jump = index + max_num

#     if og_max_jump == array.size
#       return true
#     else
#       array[index + 1..max_num - 1].reverse_each.with_index do |n, n_index|
#         true_n_index = (max_num - 1) - n_index
#         next if n + true_n_index == og_max_jump

#         potential_jumps << [n, true_n_index]
#       end
#     end
#   end
# end