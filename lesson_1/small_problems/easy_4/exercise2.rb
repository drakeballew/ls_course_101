def calculate_century(num)
  if num % 100 == 0
    num / 100
  else
    (num / 100) + 1
  end
end

def add_ordinal(num)
  ordinals = { '1' => 'st', '2' => 'nd', '3' => 'rd' }
  year = calculate_century(num).to_s
  year + (ordinals[year[year.length - 1]] ? 
          ordinals[year[year.length - 1]] : 'th')
end

puts add_ordinal(0)
