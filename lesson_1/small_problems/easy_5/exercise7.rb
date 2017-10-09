def word_sizes(text)
  arr = text.split(' ')
  hashy = Hash.new(0)
  arr.each do |x|
    hashy[x.gsub(/[^a-z]/i, '').length] += 1
  end
  hashy
end

word_sizes('') == {}
