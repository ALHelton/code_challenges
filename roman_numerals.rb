# PSEUDOCODE:
# input: integer
# output: string of letters representing number in roman numeral characters
# method takes integer - parses it out based on number of digits
# ex: 1000s, 100s, 10s, 1s - never greater than 4000, so 1000s is where it's capped
# takes actual number value and place value and finds appropriate roman numberal character
# puts it all into one string

# ROMAN_NUMERALS = {
#   "M" => "1000",
#   "CM" => "900",
#   "D" => "500",
#   "CD" => "400",
#   "C" => "100",
#   "XC" => "90",
#   "L" => "50",
#   "XL" => "40",
#   "X" => "10",
#   "IX" => "9",
#   "V" => "5",
#   "IV" => "4",
#   "I" => "1"
# }

ROMAN_NUMERALS = {
  "1000" => "M",
  "900" => "CM",
  "500" => "D",
  "400" => "CD",
  "100" => "C",
  "90" => "XC",
  "50" => "L",
  "40" => "XL",
  "10" => "X",
  "9" => "IX",
  "5" => "V",
  "4" => "IV",
  "1" => "I"
  # "" => ""
}

def to_roman(number)
  num_array = number.to_s.chars
  array_size = num_array.size

  ROMAN_NUMERALS.each do |key, numeral|
    require 'pry'; binding.pry
  end
end

# def to_roman(number)
#   num_array = number.to_s.chars
#   array_size = num_array.size
#   thousand_num = ""
#   hundred_num = ""
#   ten_num = ""
#   one_num = ""

#   num_array.each_with_index do |num, index|
#     if array_size == 4
#       if index == 0
#         thousand_num = num + "000"
#       elsif index == 1
#         hundred_num = num + "00"
#       elsif index == 2
#         ten_num = num + "0"
#       else
#         one_num = num
#       end
#     elsif array_size == 3
#       if index == 0
#         hundred_num = num + "00"
#       elsif index == 1
#         ten_num = num + "0"
#       else
#         one_num = num
#       end
#     elsif array_size == 2
#       if index == 0
#         ten_num = num + "0"
#       elsif index == 1
#         one_num = num
#       end
#     elsif array_size == 1
#       one_num = num
#     end
#   end

#   require 'pry'; binding.pry
#   new_value = ROMAN_NUMERALS[thousand_num] + ROMAN_NUMERALS[hundred_num] + ROMAN_NUMERALS[ten_num] + ROMAN_NUMERALS[one_num]
# end

p to_roman(128)
# p to_roman(2000)
# p to_roman(2017)
# p to_roman(1999)
