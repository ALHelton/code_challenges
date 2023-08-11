# input: 2 arguments - one integer, one array of arrays
# output: integer

# Notes:
# numCourses must be 1 or more, and less than 2000
# prerequisites can have 1 to 5000 arrays inside
# the length of arrays inside of prereqs can only be 2
# there are no duplicate arrays inside prereq, all unique

def can_finish(num_courses, prerequisites)
    
end

p can_finish(2, [[1, 0]])
# => true

p can_finish(2, [[1, 0], [0, 1]])
# => false
