# Practice Problem 1
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hash = {}
# flintstones.each_with_index { |x, idx| flintstones_hash[x] = idx }
# p flintstones_hash

# Practice Problem 2
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# age_sum = 0
# ages.values.each { |x| age_sum += x }
# p ages.values.inject(:+)
# p age_sum

# Practice Problem 3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.reject { |k, v| v > 100 }

# Practice Problem 4
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.min

# Practice Problem 5
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.rindex { |x| x =~ /be/i }

# Practice Problem 6
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.map! { |x| x = x[0..2] }

# Practice Problem 7
# statement = "The Flintstones Rock"

# Practice Problem 8
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p numbers
#   p number
#   p numbers.shift(1)
#   p numbers
# end

# Practice Problem 9
# def titleize(string)
#   p string.split.map { |x| x.capitalize }.join(' ')
# end
# titleize("the flintstones rock")

# Practice Problem 10
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |k, v|
#   case
#   when v['age'] < 18 then v['age_group'] = 'kid'
#   when v['age'] > 64 then v['age_group'] = 'senior'
#   else v['age_group'] = 'adult'
#   end
# end

# p munsters
