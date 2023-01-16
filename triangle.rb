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
  is_each_side_more_zero = [a,b,c].all? {|side| side > 0}
  min, middle, max = [a, b, c].sort
  is_two_sides_grater_last = min + middle > max
  is_valid = is_each_side_more_zero && is_two_sides_grater_last
  unless is_valid
    raise TriangleError
  end
  return :equilateral if [a, b, c].uniq.size <= 1
  return :isosceles if [a, b, c].uniq.size == 2
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
