def int_to_ordinal(num)
  case 
  when num.zero? then '1st'
  when num == 1 then '2nd'
  when num == 2 then '3rd'
  when num == 3 then '4th'
  when num == 4 then '5th'
  when num == 5 then '6th'
  end
end

arr = []

loop do
  break if arr.size > 5
  puts "Enter #{int_to_ordinal(arr.size)} number: "
  number = gets.chomp.to_i
  arr << number
end

if arr.count(arr[5]) > 1
  puts "The number #{arr[5]} appears in #{arr[0..4]}."
else
  puts "The number #{arr[5]} does not appear in #{arr[0..4]}."
end
