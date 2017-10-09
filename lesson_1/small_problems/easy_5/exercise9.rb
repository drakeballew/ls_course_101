def crunch(text)
  words = text.split(' ')
  words_array = []
  words.each do |x|
    index = 0
    letters_array = []
    while index < x.length
      if index == 0
        letters_array << x[index]
      elsif x[index] != x[index-1]
        letters_array << x[index]
      end
      index += 1
    end
    words_array << letters_array.join()
  end
 p words_array.join(' ')
end

p crunch('') == ''
