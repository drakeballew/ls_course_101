# each character if current character is different than last character, push to new array

def crunch(str)
  arr = []
  str.each_char do |char|
    if char != arr.last
      arr << char
    end
  end
  arr.join

end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
