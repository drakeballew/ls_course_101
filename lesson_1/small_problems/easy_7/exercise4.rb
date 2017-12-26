def swapcase(string)
  ind = 0
  new_string = ''
  while ind < string.length
    if string[ind].downcase == string[ind]
      new_string += string[ind].upcase
    else
      new_string += string[ind].downcase
    end
    ind += 1
  end
  new_string
end

def swapcase_deux(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end
