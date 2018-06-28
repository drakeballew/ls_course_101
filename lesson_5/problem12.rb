arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = Hash.new
arr.each { |sub_arr| hsh[sub_arr[0]] = sub_arr[1] }
p hsh
