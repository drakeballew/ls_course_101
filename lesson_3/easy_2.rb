# Question 1

ages.assoc("Spot") { |x| "No #{x} present."}
ages.fetch("Spot") { |x| "No #{x} present" }
ages.has_key?("Spot")
ages.include?("Spot")
ages.key?("Spot")
ages.member?("Spot")

# Question 2

munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

# Question 3

ages.merge!(additional_ages)

# Question 4

advice.include?("Dino")
advice.match("Dino")

# Question 5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6

flintstones.push("Dino")
flintstones << "Dino"

# Question 7

flintstones.push("Dino", "Hoppy")

# Question 8

advice.slice!(0...(advice.index('house')))
advice.slice(0...(advice.index(' training')))

# Question 9

statement.chars.count { |x| x == 't' }
statement.count('t')

# Question 10

title.center(40)


