puts "What is your age?"
curr_age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

curr_year = Time.now.year
age_diff = retire_age - curr_age

puts "It's #{curr_year}. You will retire in #{curr_year + age_diff}."
puts "You only have #{age_diff} years of work to go!"
