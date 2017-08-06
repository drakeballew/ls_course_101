=begin
def sum(int)
  arr = []
  int.to_s.each_char { |x| arr << x.to_i }
  p arr.sum
end
=end

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(123)