def count_occurrences(arr)
  hsh = {}
  arr.each { |word| hsh[word] = arr.count(word) }
  hsh.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)
