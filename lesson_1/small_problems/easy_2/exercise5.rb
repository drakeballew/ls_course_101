print 'What is your name? '
name = gets.chomp

unless /^[A-Z][a-z]+\!$/.match(name)
  puts "Hello, #{name}."
else
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
end
