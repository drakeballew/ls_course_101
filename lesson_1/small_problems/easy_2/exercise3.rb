print 'What is the bill? '
bill = gets.chomp.to_i
print 'What is the tip percentage? '
tip_rate = gets.chomp.to_i

tip = (tip_rate.to_f / 100) * bill
total = tip + bill

puts "The tip is $#{tip.round(1)}."
puts "The total is $#{total.round(1)}."
