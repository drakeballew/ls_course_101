def substrings_at_start(string)
  arr = []

  1.upto(string.size) do |count|
    arr << string.slice(0, count)
  end
  
  arr
end

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
