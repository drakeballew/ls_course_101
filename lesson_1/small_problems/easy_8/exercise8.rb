CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  arr =
    string.chars.map do |x|
      if CONSONANTS.include?(x.downcase)
        x * 2
      else
        x
      end
    end
  arr.join
end

p double_consonants('String') == 'SSttrrinngg'
p double_consonants('') == ''
