def calculate_sq_meters(length, width)
  length * width
end

def convert_sq_meters_to_sq_feet(sq_meters)
  (sq_meters * 10.7639).round(2)
end

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_i
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_i

metric_area = calculate_sq_meters(length, width)
standard_area = convert_sq_meters_to_sq_feet(metric_area)

puts "The area of the room is #{metric_area} square meters (#{standard_area} \
  square feet."
