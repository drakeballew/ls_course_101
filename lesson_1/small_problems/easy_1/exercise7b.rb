# num/2 times do '10'
# + num % 2 times do '1'

def stringy(num)
  str = ''
  (num/2).times do str += '10' end
  (num % 2).times do str += '1' end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
