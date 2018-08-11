def rotate_array(arr)
  arr.slice(1..arr.size-1) + arr.slice(0..0)
end

def rotate_rightmost_digits(num, int)
  arr = []
  num.to_s.each_char { |x| arr << x }
  right_digits = arr.slice((0 - int)..-1)
  (arr.slice(0...(0 - int)) + rotate_array(right_digits)).join.to_i
end

def ls_rotate_rightmost_digits(num, int)
  all_digits = num.to_s.chars
  all_digits[-int..-1] = rotate_array(all_digits[-int..-1])
  all_digits.join.to_i
end


p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
