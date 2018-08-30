# for integers 1 to n,
# find sum of squares
## iterate through each integer, store square of that integer in array1, sum reduce
# find sum integers, square result, store in array2
# find difference -- array2 - array1

def sum_square_difference(int)
  sum_squares = []
  squares_sum = []

  (1..int).each do |num|
    sum_squares << num ** 2
    squares_sum << num
  end
  sum_squares = sum_squares.reduce(:+)
  squares_sum = squares_sum.reduce(:+) ** 2

  squares_sum - sum_squares
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
