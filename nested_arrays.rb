# Ruby built in method/function to flatten arrays - .flatten
# recreate this functionality without using .flatten
# remove the deeply nested brackets to return a single array

# input: a deeply nested array, or multi-dimensional array
# output: a one-dimensional array

def bracket_crusher(input)
  removed_brackets = input.join(" ")
  new_array = removed_brackets.split(" ")
  new_array.map do |element|
    if element.to_i.to_s == element
      element.to_i
    else
      element
    end
  end
end

# p bracket_crusher([1, 2, 3, [[4], 5], [[[6]]]])
# => [1, 2, 3, 4, 5, 6]

p bracket_crusher(["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]])
# => ["hi", "this", "is", "string", "that", "is", "very", "nested"]