# case insensitive
# disregard non-alphanumeric characters [a-z][A-Z][1-9]

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  palindrome?(str.downcase.gsub(/\W/, ''))
end

real_palindrome?('madam')
real_palindrome?('Madam')
real_palindrome?("Madam, I'm Adam")
real_palindrome?('356653')
real_palindrome?('356a653')
real_palindrome?('123ab321')
