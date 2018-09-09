# split string to array
# each element, swap first and last characters

def swap(str)
  hold_arr = []
  arr = str.split
  arr.each do |ele|
    ele[0], ele[-1] = ele[-1], ele[0]
    hold_arr << ele
  end
  hold_arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
