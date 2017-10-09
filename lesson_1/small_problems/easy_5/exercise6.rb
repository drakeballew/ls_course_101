def word_sizes(text)
  arr = text.split(' ')
  hashy = Hash.new(0)
  arr.each do |x|
    hashy[x.length] += 1
  end
  hashy
end

puts word_sizes('Hey diddle diddle, the cat and the fiddle!')
