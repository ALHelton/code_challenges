# input: 2 arguments - one integer, one array of arrays
# output: boolean

# Notes:
# numCourses must be 1 or more, and less than 2000
# prerequisites can have 1 to 5000 arrays inside
# the length of arrays inside of prereqs can only be 2
# there are no duplicate arrays inside prereq, all unique
# assuming there are no duplicate numbers in array - ex: [2, 2]
# 

def can_finish(num_courses, prerequisites)
  before = []
  after = []

  prerequisites.each do |array|
    if array[1] < array[0]
      before << array
    else
      after << array
    end
  end

  return false if !before.empty? && !after.empty?
  true
end

# p can_finish(2, [[1, 0]])
# # => true

# p can_finish(2, [[1, 0], [0, 1]])
# # => false

# p can_finish(3, [[1, 0], [2, 0], [2, 1]])
# => true

p can_finish(3, [[1, 0], [2, 0], [1, 2], [0, 2]])
# => false
