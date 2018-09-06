puts "What is the bill? "
bill = gets.chomp.to_i
puts "What is the tip percentage? "
tip_rate = gets.chomp.to_i
tip = bill * tip_rate / 100

puts "The tip is $#{tip.round(2)}"
puts "The total is $#{bill += tip}"
