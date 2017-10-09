def sort_alphabetically(numbers)
  alphas = %w(zero one two three four five six seven eight nine ten eleven
              twelve thirteen fourteen fifteen sixteen seventeen eighteen
              nineteen).map.with_index { |x, i| [i, x]}.to_h

  numbers.sort_by { |x| alphas[x]}
end

p sort_alphabetically((0..19).to_a)
