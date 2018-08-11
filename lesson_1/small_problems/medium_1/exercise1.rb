def rotate_array(arr)
  arr.slice(1..arr.size-1) + arr.slice(0..0)
end

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
