def reverse_array(array)
  result_array = []
  array.reverse_each { |x| result_array << x }
  result_array
end
