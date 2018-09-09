# look at each character of string, sub space if non-alphanumeric
# split by space, join by space


def cleanup(str)
  str.gsub(/\W/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

