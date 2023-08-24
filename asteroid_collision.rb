# input: array of integers (positive or negative)
# output: array of remaining integers from input array

# NOTES
# direction of ints: positive = right, negative = left
# if remaining ints are both positive, or both negative, they both stay
# (going the same direction)
# 
# bigger size = bigger number
# Examples:
# -10 is as big as 10
# 5 is smaller than -10
# 5 is smaller than 10

# PSEUDOCODE
# method takes argument of an array of integers
# iterate through the array and determine if positive or negative number
# if int is positive, will be compared to the integer after it
# if int is negative, will be compared to the integer before it

def asteroid_collection(current_array)
  collision = true

  until collision == false
    smaller_array = shrink_array(current_array)
    if smaller_array.size != current_array.size
      current_array = smaller_array
    else
      return current_array
    end
  end
end

def shrink_array(array)
  new_array = []
  array.each do |num|
    if new_array.last.nil?
      new_array << num
      next
    elsif (new_array.last > 0 && num < 0) || (new_array.last < 0 && num > 0)
      if new_array.last.abs < num.abs
        new_array.pop
        new_array << num
      elsif new_array.last.abs == num.abs
        new_array.pop
        next
      else
        next
      end
    else
      new_array << num
    end
  end
  new_array
end

# loop until all elements in array are the same(pos OR neg)? 

p asteroid_collection([5, 10, -5])
# => [5,10]

p asteroid_collection([8,-8])
# => []

p asteroid_collection([10, 2, -5]) #NOT WORKING
# => [10]
