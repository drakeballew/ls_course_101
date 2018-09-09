# for each element in array, look up value in hash and store in new array
# sort new array
# look up keys for each value in array

NUM_TO_WORD = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
  5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
  10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
  15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def alphabetic_number_sort(arr)
  hold_arr1 = []
  hold_arr2 = []
  arr.each { |value| hold_arr1 << NUM_TO_WORD[value] }
  hold_arr1.sort!
  hold_arr1.each { |word| hold_arr2 << NUM_TO_WORD.key(word) }
  hold_arr2
end

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def ls_alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p ls_alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

