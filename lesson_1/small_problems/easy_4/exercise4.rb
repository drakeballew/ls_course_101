def gregorian_leap_year?(num)
  (num % 400 == 0) || (num % 4 == 0 && num % 100 != 0)
end

def julian_leap_year?(num)
  num % 4 == 0
end

def leap_year?(num)
  if num >= 1752
    gregorian_leap_year?(num)
  else
    julian_leap_year?(num)
  end
end
