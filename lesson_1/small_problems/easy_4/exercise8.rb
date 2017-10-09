DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
  '7' => 7, '8' => 8, '9' => 9
}

def check_sign(str)
  if str[0] == '-'
    str.delete!('-')
    -1
  elsif str[0] == '+'
    str.delete!('+')
    1
  else
    1
  end
end

def string_to_signed_integer(str)
  sign = check_sign(str)

  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = (10 * value) + digit }
  sign * value
end

puts string_to_signed_integer('-123') == 123
