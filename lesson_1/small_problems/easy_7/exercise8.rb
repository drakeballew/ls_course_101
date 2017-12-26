def multiply_lists(arr1, arr2)
  new_arr = []
  
  arr1.each_with_index do |item, index|
    new_arr << arr1[index] * arr2[index]
  end

  new_arr
end

def zip_lists(arr1, arr2)
  arr1.zip(arr2).map { |x, y| x * y }

end

p multiply_lists([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
