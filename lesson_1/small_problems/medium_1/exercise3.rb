def rotate_array(arr)
  # returns array w/first entry of the original array is appended to the end
  arr.slice(1..arr.size-1) + arr.slice(0..0)
end

def rotate_rightmost_digits(num, int)
  # creates an array of digits from an integer
  all_digits = num.to_s.chars
  # sets the last x numbers in all_digits to the result of rotate_array
  all_digits[-int..-1] = rotate_array(all_digits[-int..-1])
end

def max_rotation(int)
  int = int.to_s
  new_int = int
  int_length = int.length
  counter = 0
  new_arr = []

  while counter < int_length
    new_arr[counter..int_length-1] = rotate_rightmost_digits(new_int, int_length - counter)
    new_int = new_arr.drop(counter).join.to_i
    counter += 1
  end
  new_arr.join.to_i
end

def ls_rotate_array(array)
  array[1..-1] + [array[0]]
end

def ls_rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def ls_max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = ls_rotate_rightmost_digits(number, n)
  end
  number
end

p ls_max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
