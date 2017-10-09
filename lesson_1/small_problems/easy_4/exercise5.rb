def multisum(num)
  num_range = 1..num
  num_arr = []
  num_range.step { |x| num_arr << x }
  multiples = []
  num_arr.each { |x| multiples << x if (x % 3 == 0 || x % 5 == 0) }
  multiples.sum
end

puts multisum(1000)
