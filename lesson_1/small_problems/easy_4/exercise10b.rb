require 'pry-byebug'

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def signed_integer_to_string(num)
  num_arr = []
  str_arr = []
  value = num.abs

  if value == 0
    num_arr << value
  else
    while value > 0
      # binding.pry
      num_arr << value % 10
      value = (value - (value % 10)) / 10
    end
  end

  num_arr.each { |num| str_arr << DIGITS[num] }

  if num == 0
    return str_arr.reverse.join
  elsif num > 0
    return '+' + str_arr.reverse.join
  else
    return '-' + str_arr.reverse.join
  end

end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
