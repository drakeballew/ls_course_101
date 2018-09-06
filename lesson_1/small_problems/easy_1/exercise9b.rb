# convert to string
# split to characters
# create holding int
# convert each character to integer
# add integer to holding int

def sum(int)
  # holding_int = 0
  # int.to_s.chars.each { |x| holding_int += x.to_i }
  # holding_int

  int.to_s.chars.map(&:to_i).reduce(:+)
end

p sum(496)
