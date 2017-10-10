def find_fibonacci_length(int)
  state_1 = 1
  state_2 = 1
  arr = []
  arr << state_1
  while state_2.to_s.length < int
    arr << state_2
    state_1 = arr[arr.size - 2]
    state_2 +=  state_1
  end
  p arr.size + 1
end

find_fibonacci_length(1000)
