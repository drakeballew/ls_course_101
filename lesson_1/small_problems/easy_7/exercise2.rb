def letter_case_count(string)
  ind = 0
  upper = 0
  lower = 0
  neither = 0
  while ind < string.length
    case
      when string[ind].match(/^[A-Z]/) then upper += 1
      when string[ind].match(/^[a-z]/) then lower += 1
      else neither += 1
    end
    ind += 1
  end
  {lowercase: lower, uppercase: upper, neither: neither }
end

def letter_case_count_deux(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
