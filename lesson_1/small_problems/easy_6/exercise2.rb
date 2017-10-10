def remove_vowels(array)
  vowels_removed = []
  array.each { |x| vowels_removed << x.gsub(/[aeiou]/i, '') }
  vowels_removed
end
