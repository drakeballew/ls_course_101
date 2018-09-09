def word_sizes(str)
  hsh = Hash.new(0)
  # str.split.each { |word| hsh[word.size] = 0 }
  str.split.each { |word| hsh[word.gsub(/\W/, '').size] += 1 }
  hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
