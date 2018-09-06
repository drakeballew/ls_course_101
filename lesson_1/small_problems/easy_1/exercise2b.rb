# absolute value is odd if number % 2 equals 1 or -1

def is_odd?(int)
  int % 2 == 1 || int % 2 == -1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
