require 'pry-byebug'

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
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

  if num < 0
    p '-' + str_arr.reverse.join
  else
    p str_arr.reverse.join
  end

end

p integer_to_string(4321) == '4321'
p integer_to_string(-123) == '0'
p integer_to_string(5000) == '5000'
