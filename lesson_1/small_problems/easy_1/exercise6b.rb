# split string
# iterate through each element (el)
## if el is five or more characters, reverse
## otherwise next el
## join elements together with spaces

def reverse_words(str)
  hold_arr = []
  str.split.each do |el|
    if el.size >= 5
      hold_arr << el.chars.reverse.join
    else
      hold_arr << el
    end
  end
  hold_arr.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
