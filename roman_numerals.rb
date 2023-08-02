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
}


def to_roman(number)
  roman_numeral = ""

  ROMAN_NUMERALS.each do |key, numeral|
    while number >= key.to_i
      roman_numeral += numeral
      number -= key.to_i
    end
  end

  roman_numeral
end

# p to_roman(128)
# => "CXXVIII"

# p to_roman(2000)
# => "MM"

# p to_roman(2017)
# => "MMXVII"

p to_roman(1999)
# => "MCMXCIX"
