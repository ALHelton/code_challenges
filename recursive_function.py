# Prompt:
# Write or pseudocode a recursive function to calculate the sum of all of the positive whole numbers less than or equal to the input number

# input: integer
# output: integer - sum of all nums <= input number

# list all numbers less than the number given

def recursive_sum(num):
  if num == 0:
    return 0
  else:
    return num + recursive_sum(num - 1)
  # return num if num == 0 else num + recursive_sum(num - 1)

print(recursive_sum(6))