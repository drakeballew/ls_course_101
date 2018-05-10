def negative(x)
  x > 0 ? x * -1 : x
end

def ls_negative(number)
  -number.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
