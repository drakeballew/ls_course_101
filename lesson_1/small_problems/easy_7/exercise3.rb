def word_cap(string)
  arr = []
  string.split(" ").each { |x| arr << x.capitalize }
  arr.join(' ')
end

def word_cap_deux(string)
  string.split.map(&:capitalize).join(' ')
end
