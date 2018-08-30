# take a string, split it into characters, and iterate through each char
# store total characters as total_chars int
# if upper case, append to upper case array, lower case, lower, etc
# store percentages in hash using array.count/total_chars

def letter_percentages(str)
  total_chars = str.size
  uppers   = []
  lowers   = []
  neithers = []
  str.chars.each do |char|
    if char.match(/[A-Z]/)
      uppers << char
    elsif char.match(/[a-z]/)
      lowers << char
    else
      neithers << char
    end
  end
  low_per = calculate_percentage(str, lowers, total_chars)
  upp_per = calculate_percentage(str, uppers, total_chars)
  nei_per = calculate_percentage(str, neithers, total_chars)

  {lowercase: low_per, uppercase: upp_per, neither: nei_per }
end

def calculate_percentage(str, arr, total)
  100*arr.count/total.to_f
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

