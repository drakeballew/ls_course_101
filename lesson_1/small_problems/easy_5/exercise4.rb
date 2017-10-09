def swap(str)
  arr = str.split
  arr.each do |x|
    first_letter   = x[0]
    last_letter    = x[x.length - 1]
    x[0]           = last_letter
    x[x.length - 1] = first_letter
  end
  arr.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
