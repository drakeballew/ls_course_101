def oddities(arr)
  return_arr = []
  arr.each_with_index { |x, y| return_arr << x if y.even? }
  return_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
