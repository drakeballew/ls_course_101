def find_dup(arr)
  uniques = []
  duplicates = []
  arr.each do |x|
    if uniques.include?(x)
      duplicates << x
    else
      uniques << x
    end
  end
  duplicates[0]
end

p find_dup([1, 5, 3, 1]) == 1

def find_duplicate(array)
  array.find { |element| array.count(element) == 2 }
end
