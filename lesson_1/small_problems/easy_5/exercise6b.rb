# split string into array
# holding_hash
# each array element, store size/length as key in hash value as += 1

def word_sizes(str)
  hsh = Hash.new(0)
  # str.split.each { |word| hsh[word.size] = 0 }
  str.split.each { |word| hsh[word.size] += 1 }
  hsh
end

p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
