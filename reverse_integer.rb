# range: [-2^31, 2^31 - 1] (signed 32-bit integer)
# input: one integer - can be pos & neg numbers within the range
# output: one integer - input number reversed, or 0 if out of range

# Need to make a method that will take integer, turn into string and reverse it
# take reversed string and turn into integer
# if there are leading zeros, it will start with the next number that isn't zero
# ex: 120 -> 21

# Need helper method that will take the result of this and calculate if it's within range
# if it's not within range, will return a boolean T or F

# reverse method will take the result of this
# if true, will return the reversed number
# if false, will return 0

def reverse(x)
  rev_num = x.to_s.reverse.to_i
  rev_num *= -1 if x < 0
  range = (-2.pow(31)..2.pow(31) - 1)

  return 0 unless range.include?(rev_num)
  rev_num
end

# p reverse(123)
# p reverse(120)
# p reverse(-123)
p reverse(-1230)

# ------------- FIRST SOLUTION --------------
# def reverse(x)
#   num_array = x.to_s.reverse.chars
#   if num_array.last == "-"
#     rev_num = num_array.insert(0, num_array.pop).join.to_i
#   else
#     rev_num = num_array.join.to_i
#   end

#   range_result = in_range?(rev_num)
#   if range_result == true
#     rev_num
#   else
#     0
#   end
# end

# def in_range?(num)
#   high = 2.pow(31) - 1
#   low = -2.pow(31)
#   range = (low..high)
#   range.include?(num)
# end
# ------------------------------------------