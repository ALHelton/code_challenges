# PSEUDOCODE:
# input: integer
# output: string of letters representing number in roman numeral characters
# method takes integer - parses it out based on number of digits
# ex: 1000s, 100s, 10s, 1s - never greater than 4000, so 1000s is where it's capped
# takes actual number value and place value and finds appropriate roman numberal character
# puts it all into one string

roman_numerals = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def to_roman(number)
  require 'pry'; binding.pry
end

p to_roman(128)
# p to_roman(2000)
# p to_roman(2017)
# p to_roman(1999)
