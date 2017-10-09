def ascii_value(str)
  arr = str.chars
  val_arr = arr.map { |char| char.ord }
  val_arr.sum
end

puts ascii_value('Four score') == 984
