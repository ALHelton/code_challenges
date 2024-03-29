# input: 2 arguments:
# # 1: Array of integers
# # 2: integer
# output: boolean

# NOTES
# input array has only 0 and 1's 
# 0: Empty
# 1: Filled
# Adjacent = side by side
# Must be something like 0101, not 10011 (1's are next to each other)
# Flowerbed length is greater than 1, less than 209
# the second argument int must be at or more than 0 
# and at or below flowerbed length
# n could potentially be 0
# 
# PSEUDOCODE
# method loops through the input array with index
# sets a starting number variable to the int passed in
# in loop, next if prev number == 1
# if prev num and next num == 0, replace num with 1 and subtract 1 from starting number variable
# if prev num == 1 and num index == input array.size, and starting number variable > 0, return false
# return true if starting number variable = 0

# when to plot 1:
# index - 1 == 0 && index + 1 == 0
# index - 1 == nil && index + 1 == nil
# index - 1 == nil && index + 1 == 0
# index - 1 == 0 && index + 1 == nil

# when to skip:
# index - 1 == 1 OR nil || index + 1 == 1 OR nil

def can_place_flowers(flowerbed, n)
  valid_plots = 0

  flowerbed.each_with_index do |plot, index|
    if index > 0 && index + 1 < flowerbed.size
      valid_plots += 1 if plot == 0 && flowerbed[index - 1] == 0 && flowerbed[index + 1] == 0
    elsif index == flowerbed.size - 1
      valid_plots += 1 if plot == 0 && flowerbed[index - 1] == 0
    elsif index == 0
      valid_plots += 1 if plot == 0 && flowerbed[index + 1] == 0
    end
  end

  n <= valid_plots
end

p can_place_flowers([1,0,0,0,1], 1)
# => true

p can_place_flowers([1,0,0,0,1], 2)
# => false

p can_place_flowers([1,0,0,0,0,1], 2) # NOT WORKING
# => false

p can_place_flowers([0,0,1,0,1], 1)
# => true

p can_place_flowers([1,0,0,0,1,0,0], 2)
# => true

p can_place_flowers([0], 1)
# => true

p can_place_flowers([1], 0)
# => true

p can_place_flowers([0,0,1,0,0], 1)
# => true

# -------- SOLUTION ONE ---------
# 
# def can_place_flowers(flowerbed, n)
#   flowerbed.map.with_index do |plot, index|
#     if plot == 0 && flowerbed[index - 1] == 0 && flowerbed[index + 1] == 0
#       plot = 1
#       n -= 1
#     else
#       next
#     end
#   end

#   return true if n == 0
#   false
# end


# -------- SOLUTION TWO ---------
# 
# def can_place_flowers(flowerbed, n)
#   flowerbed.map!.with_index do |plot, index|
#     if plot == 0 && flowerbed[index - 1] == 0 && flowerbed[index + 1] == 0
#       plot = 1
#       n -= 1
#     else
#       plot
#     end
#   end

#   n == 0
# end