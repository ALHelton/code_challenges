# input: array of integers
# output: one integer

# NOTES
# The input array must have at least one number, less than 105
# the prices must be a positive number 
# assumption that prices must be a whole number
# Must find the difference between 2 numbers = profit
# number can only be considered for subtraction if it is 
# after the first number in the array order

# PSEUDOCODE
# need to iterate through the array of integers
# need to iterate again through the remaining numbers and compare 
# to the current element
# need a counter variable set to 0
# if the difference is more than 0, add to the counter variable
# if the counter variable number is higher than the difference, next
# return the counter variable number
# must buy first, before selling

def max_profit(prices)
  max_counter = 0

  prices.each_with_index do |price, index|
    prices[index + 1..prices.length - 1].each do |next_price|
      max_counter = next_price - price if next_price - price > max_counter
    end
  end

  max_counter
end

p max_profit([7,1,5,3,6,4])
# => 5

p max_profit([7,6,4,3,1])
# => 0