=begin
def stringy(int)
  count = 1
  num_str = ''

  if int <= 0
    puts "=> Must be a positive string"
  else
    while count <= int
      if count.odd?
        num_str += '1'
      else
        num_str += '0'
      end
      count += 1
    end
  end
  num_str
end
=end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'