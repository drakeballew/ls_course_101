# take a string, split into characters
# create paren_closed tracking variable default to true
# for each character, check whether it's an opening or closing ()
# if opening, change paren_closed state tracker to !paren_closed
# if closing, change paren_closed to !paren_closed

require 'pry-byebug'

def balanced?(str)

  parens = 0

  str.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?

end

p balanced?(')Hey!(') == false
