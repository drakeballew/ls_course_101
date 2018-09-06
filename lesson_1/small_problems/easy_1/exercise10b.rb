# if true, bonus is half num
# else bonus is 0

def calculate_bonus(int, bool)
  bonus = 0
  if bool
    bonus = int / 2
  end
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
