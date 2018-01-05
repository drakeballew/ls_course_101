def center_of(string)
  characters = string.size
  halfers = characters / 2

  case
    when characters.odd?
      string[halfers]
    else
      string[(halfers -1) .. halfers]
    end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
