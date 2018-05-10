def get_grade(a, b, c)
  score = (a + b + c) / 3

  case score
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end

end

p get_grade(95, 90, 93) # == "A"
