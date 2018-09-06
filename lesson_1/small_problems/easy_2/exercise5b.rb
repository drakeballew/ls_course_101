puts 'What is your name?'
user_name = gets.chomp
puts user_name.include?('!') ? "HELLO #{user_name.slice(0..-2).upcase}. WHY ARE WE SCREAMING?" : "Hello #{user_name.capitalize}."
