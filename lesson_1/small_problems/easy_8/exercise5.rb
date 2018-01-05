def substrings_at_start(string_two)
  arr = []

  1.upto(string_two.size) do |count|
    arr << string_two.slice(0, count)
  end
  
  arr
end

def substrings(string_one)
  results = []

  (0..string_one.size).each do |start_index|
    this_substring = string_one[start_index .. -1]
    results.concat(substrings_at_start(this_substring))
  end
  
  results
end

def palindromes(string)
  strings_array = substrings(string)
  palindromes_array = []

  strings_array.each do |x|
    if x.reverse == x && x.size > 1
      palindromes_array << x 
    end
  end

  palindromes_array

end

p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
