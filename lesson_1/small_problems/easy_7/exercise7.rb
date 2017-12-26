def show_multiplicative_average(array)
  denominator = array.size
  numerator   = 1.to_f
	
  array.each { |x| numerator *= x }

  puts "The result is #{'%.3f' % (numerator/denominator)}"

end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
