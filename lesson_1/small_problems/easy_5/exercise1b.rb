# each character in string, find ascii value and store in holding arr
## arr << each char.ord
# reduce arr (:+)

def ascii_value(str)
  arr = [0]
  str.each_char { |char| arr << char.ord }
  arr.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
