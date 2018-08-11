def joinor(arr, delim = ',', word = 'or')
  last_index = arr.size - 1
  arr[0..last_index - 1].join("#{delim} ") + "#{delim} #{word} " + arr[last_index]
end


array = %w(1 2 3 4 5 6)

p joinor(array, ';', 'and')
