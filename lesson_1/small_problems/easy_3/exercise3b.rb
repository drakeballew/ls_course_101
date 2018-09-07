puts 'Please write word or multiple words: '
words = gets.chomp
counter = 0
words.split.each { |char| counter += char.size }
puts "There are #{counter} characters in \"#{words}\"."
