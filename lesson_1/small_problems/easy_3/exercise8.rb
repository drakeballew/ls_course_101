def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam') == true
