DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def negative?(num)
  true if num < 0
end

def integer_to_string(num)
  a = num
  result = ''
  loop do
    num, remainder = num.abs.divmod(10)
    result.prepend(DIGITS[remainder])
    break if num.zero?
  end
  result.prepend('-') if negative?(a)
  result
end

puts integer_to_string(-234) == '-234'
