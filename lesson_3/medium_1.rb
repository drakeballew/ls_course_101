# Question 1
# statement = "The Flintstones Rock!"
# spacer = ""

# 10.times do |x|
#   puts statement.merge(spacer)
#   spacer << " "
# end

# Question 2

# Because it is trying to merge two different data types into one. One solution
# is to assign 40 + 2 to a variable and use string interpolation. Another is to
# convert (40 + 2) to a string using (40 + 2).to_s.

# Question 3

# def factors(number)
#   dividend = number
#   divisors = []

#   while dividend > 0 do
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end

#   divisors
# end


# Bonus 1
# To show that the divisor divides the number evenly (no remainder)

# Bonus 2
# To return the divisors array

# Question 4
# Shovel (<<) alters the original array rather than requiring a second, where + requires
# an input array in addition to the buffer array that is eventually returned.

# Question 5

# def fib(first_num, second_num, limit)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 15)
# puts "result is #{result}"

# Question 6

# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += " rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# Question 7
#34

# Question 8
# Yes, because the method passes the actual munsters hash object itself and does not reassign it.

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female" }
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# p mess_with_demographics(munsters)
# p munsters

# Question 9
# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# Question 10
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

