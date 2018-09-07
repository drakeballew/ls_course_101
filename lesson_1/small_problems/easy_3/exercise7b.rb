def oddities(arr)
  hold_arr = []
  arr.each_with_index { |x,y| hold_arr << x if y.even? }
  hold_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
