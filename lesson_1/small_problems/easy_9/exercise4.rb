def sequence(int)
  count = 1
  arr = []
  arr << count

  while count < int
    count += 1
    arr << count
  end

  arr
end


def ls_sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
