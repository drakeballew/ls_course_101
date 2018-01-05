def sum_of_sums(arr)
  new_arr = []
  sum_arr = []

  while arr.any?
    new_arr << arr.slice!(0)
    sum_arr << new_arr.inject(:+)
  end

  sum_arr.inject(:+)
end

p sum_of_sums([3, 5, 2])
