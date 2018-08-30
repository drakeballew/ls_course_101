
# - take three integers (sides)
# - make sure all sides are greater than 0 - if not, invalid
# - push into array and sort
# - make sure sum of two shorter sides is greater than longest side - if not, invalid
# - if all sides are equal, equilateral
# - if no sides are equal, scalene
# - if two sides equal, isosceles

require 'pry-byebug'

def triangle(side1, side2, side3)

  sides = [side1, side2, side3].sort
  triangle = nil
  # binding.pry
  if sides.uniq.count == 1
    triangle = :equilateral
  elsif sides.uniq.count == 2
    triangle = :isosceles
  else
    triangle = :scalene
  end

  if sides.any? { |side| side <= 0 } then triangle = :invalid end
  if (sides[0] + sides[1]) < sides[2] then triangle = :invalid end

  triangle
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
