
# take an array of length n
# for each element in i, calculate if current element is less than previous element
## if yes, swap, else next
# repeat for
require 'pry-byebug'

def bubble_sort!(arr)
  swap_count = nil

  while swap_count != 0
    swap_count = 0
    idx = 1
    while idx < arr.size
      if arr[idx-1] > arr[idx]
        arr[idx-1], arr[idx] = arr[idx], arr[idx-1]
        swap_count += 1
      end
      idx += 1
    end
    break if swap_count == 0
  end
  p arr
end

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

