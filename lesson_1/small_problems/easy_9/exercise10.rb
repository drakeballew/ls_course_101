def buy_fruit(arr)
  arr.map { |x, y| [x] * y }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
