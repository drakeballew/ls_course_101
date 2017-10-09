# def running_total(arr)
#   new_arr = []
#   total = 0
#   size = arr.size
#   until new_arr.size == size
#     total += arr[0]
#     new_arr << total
#     arr.shift
#   end
#   new_arr
# end

def running_total(arr)
  sum = 0
  arr.map { |value| sum += value }
end

p running_total([14, 11, 7, 15, 20])