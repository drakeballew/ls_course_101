def reversed_number(num)
  result = []
  num.to_s.chars.each do |x|
    result << x if x != 0 
  end
  result.reverse.join().to_i
end

p reversed_number(12213) == 31221
