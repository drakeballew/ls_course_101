# My solution
=begin
def substrings(string)
  arr = []
  counter = 0
  
  while counter < string.size
    1.upto(string.size - counter) do |count|
      arr << string.slice(counter, count)
    end
    counter += 1
  end
 arr
end
=end

# LS Solution
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


p substrings('abcde')
