# find century by dividing by 100
## if num % 100 does not equal zero, plus 1
# if century ends in 1 and is not 11, st
# if century ends in 2 and is not 12, nd
# ends in 3 and not 13, rd
# else th

def century(year)
  century = year % 100 == 0 ? year / 100 : (year / 100) + 1
  century = century.to_s
  century_ordinal = century[-1]
  if century_ordinal == '1' and century[-2..-1] != '11'
    century << 'st'
  elsif century_ordinal == '2' and century[-2..-1] != '12'
    century << 'nd'
  elsif century_ordinal == '3' and century[-2..-1] != '13'
    century << 'rd'
  else
    century << 'th'
  end
  century
end

p century(2000) == '20th'
