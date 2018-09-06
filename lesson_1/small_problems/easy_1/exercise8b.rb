# count number of elements
# sum all elements
# average is sum over count

def average(arr)
  sum = arr.reduce(:+)
  sum / arr.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
