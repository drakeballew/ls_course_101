# for each number, see if it is multiple of 3 or 5
## if it is, add to holding array, increment counter by 1

def multisum(num)
  counter = 1
  holding_arr = []
  while counter <= num
    if counter % 3 == 0 || counter % 5 == 0
      holding_arr << counter
    end
    counter += 1
  end
  holding_arr.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
