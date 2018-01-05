def fizzbuzz(num1, num2)
  arr = []

  (num1 .. num2).each do |x|
    arr << fizzbuzz_value(x)
  end

  puts arr.join(', ')
end

def fizzbuzz_value(num)
  if num % 3 == 0 && num % 5 == 0
    'FizzBuzz' 
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num
  end
end

fizzbuzz(1, 15)
