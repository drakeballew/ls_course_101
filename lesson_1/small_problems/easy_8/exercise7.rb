def repeater(string)
  string.chars.map { |x| x * 2 }.join()
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''