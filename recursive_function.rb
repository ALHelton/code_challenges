# Prompt:
# Write or pseudocode a recursive function to calculate the sum of all of the positive whole numbers less than or equal to the input number

# input: integer
# output: integer - sum of all nums <= input number

# list all numbers less than the number given

def recursive_sum(num)
  return 0 if num == 0
  # puts num
  # print_sum = num + recursive_sum(num - 1)
  # puts print_sum
  # print_sum

  num + recursive_sum(num - 1)

end

puts recursive_sum(6)

# 6 + 5 + 4 + 3 + 2 + 1 + 0 = 21