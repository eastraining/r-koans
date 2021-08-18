# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE

  # test triangle validity
  if (a <= 0 or b <= 0 or c <= 0)
    raise TriangleError.new("One or more sides are less than or equal to zero")
  elsif (a + b <= c or b + c <= a or a + c <= b)
    raise TriangleError.new("One side is at least as long as the other two sides combined")
  end

  # side logic
  if a == b
    if b == c
      return :equilateral
    else
      return :isosceles
    end
  elsif b == c
    return :isosceles
  elsif a == c
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
