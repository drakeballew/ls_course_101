def xor?(arg1, arg2)
  if (arg1 == true && arg2 == false) || (arg2 == true && arg1 == false)
    true
  else
    false
  end
end

def ls_xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
