def reverse_sentence(str)
  str.split.sort { |x, y| y <=> x }.join(' ')
end

puts reverse_sentence('Reverse these words') == 'words these Reverse'
