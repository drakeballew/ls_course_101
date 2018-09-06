puts "Enter the length of the room in meters: "
length = gets.chomp.to_i
puts "Enter the width of the room in meters: "
width = gets.chomp.to_i
puts "The area of the room is #{(length * width).round(1)} square meters (#{(length * width * 10.7639).round(2)} square feet)"
