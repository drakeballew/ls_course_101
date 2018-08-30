
# take angles, store as array
# if any angle is 0 or less, invalid
# if angles don't sum to 180, invalid

# if one angle is 90, right
# if all 3 angles less than 90, acute
# if one angle greater than 90, obtuse

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if angles.any? { |angle| angle <= 0 } then return :invalid end
  if angles.reduce(:+) != 180 then return :invalid end

  if angles.include?(90)
    :right
  elsif angles.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
