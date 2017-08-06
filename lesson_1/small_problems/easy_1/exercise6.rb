=begin
def reverse_words(str)
  arr1 = str.split
  arr2 = arr1.map { |x| x.split('') }
  arr3 = []
  arr2.each do |x| 
    if x.size > 4 
      x.reverse!
    end
    arr3 << x.join
  end
  p arr3.join(' ')
end

reverse_words("Launch School")
=end

def reverse_words(str)
  words = []

  str.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Launch School') 