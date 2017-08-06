def count_occurences(arr)
  uniques = arr.uniq.select
  uniques.each do | x |
    size= arr.select { |y| y == x }.size
    puts "#{x} => #{size}"
  end    
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurences(vehicles)