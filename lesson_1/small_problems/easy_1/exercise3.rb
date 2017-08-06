def digit_list(int)
  if int.is_a? Integer
    if int > 0
      arr = int.to_s.split('')
      arr.map! { |x| x.to_i }
    else
      puts "Sorry! Positive integers only."
    end
  else
    puts "Sorry! Integers only."
  end
end
