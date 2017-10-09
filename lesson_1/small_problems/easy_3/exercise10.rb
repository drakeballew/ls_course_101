def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

puts palindromic_number?(34543) == true
