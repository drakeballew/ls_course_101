def valid_operation?(operation)
  operation == 's' || operation == 'p' ? true : false
end

def valid_integer?(integer)
  integer != '0' && /^\d+$/.match(integer)
end

def factorial(integer, operation)
  if integer <= 1
    1
  elsif operation == 's'
    integer + factorial(integer - 1, 's')
  elsif operation == 'p'
    integer * factorial(integer - 1, 'p')
  end
end

int = ''
loop do
  puts 'Please enter an integer greater than 0: '
  int = gets.chomp
  if valid_integer?(int)
    int = int.to_i
    break
  else
    puts 'Please try again.'
  end
end

op = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  op = gets.chomp
  return 'Please try again' if valid_operation?(op) == false
  break
end
operation = op == 's' ? 'sum' : 'product'

result = factorial(int, op)
puts "The #{operation} of the integers between 1 and #{int} is #{result}."
