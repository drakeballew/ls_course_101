puts 'Please enter one or more words: '
words = gets.chomp
words_arr = words.split
characters = 0
words_arr.each { |x| characters += x.length }
puts "There are #{characters} characters in the string \"#{words}\"."
