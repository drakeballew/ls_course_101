def uppercase?(str)
  state = 1

  str.each_char { |x| x.upcase == x ? state : state * -1 }
  state = 1 ? true : false
end

def ls_uppercase?(str)
  str == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
