require 'pry-byebug'

def block_word?(str)
  blocks = # define blocks as nested arrays
  [
    ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N','A'],
    ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
    ['V', 'I'], ['L', 'Y'], ['Z', 'M']
  ]
  new_array = []

  str.chars.each do |char| # each character, match to character in blocks
    blocks.each do |block|
      if block.include?(char.upcase)
        new_array << char
        blocks.delete(block) # only keep blocks with two elements
      end
    end
  end
  new_array.join == str # if new array joined as string matches given string

end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true




