def staggered_case(string)
  all_low = []
  staggered = []
  string.downcase.each_char { |c| all_low << c }
  all_low.each_with_index do |x, i|
      staggered << x.upcase if i.even?
      staggered << x if i.odd?
  end
  staggered.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!')
