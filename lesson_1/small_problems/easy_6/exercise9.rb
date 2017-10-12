def include?(array, search_val)
  array.any? { |x| x == search_val }
end
