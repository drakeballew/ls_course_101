# if divisible by 4, yes
# if divisible by 100 no, unless also divisible by 400

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0 && year % 400 != 0
      false
    else
      true
    end
  else
    false
  end
end

def ls_leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
