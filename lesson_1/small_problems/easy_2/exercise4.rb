print 'What is your age? '
current_age = gets.chomp.to_i

print 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_to_go = retire_age - current_age

puts
puts "It's 2017. You will retire in #{current_year + years_to_go}."
puts "You have only #{years_to_go} years of work to go!"
