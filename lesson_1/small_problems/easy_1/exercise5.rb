=begin
def reverse_sentence(str)
  arr = str.split(" ")
  index = arr.length - 1
  new_str = ''
  while index >= 0
    new_str += arr[index]
    if index != 0
      new_str += ' '
    end
    index -= 1
  end
  new_str
end
=end

def reverse_sentence(str)
  str.split.reverse.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'