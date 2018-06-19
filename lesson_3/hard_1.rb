# Question 1
# When you initialize a local variable within an if block, even if that block doesn't get executed, the local variable is initialized to nil.
=begin
if false
  greeting = “hello world”
end

greeting
=end

# Question 2
=begin
# It will return { a: 'hi there' } because informal_greeting references the original string object and the << operator modifies the object that called it

greetings = { a: 'hi' }
puts "greetings object id: #{greetings.object_id}"
puts "greetings a: object id: #{greetings[:a].object_id}"
informal_greeting = greetings[:a]
puts "informal_greeting object id: #{informal_greeting.object_id}"
informal_greeting << ' there'
puts "informal_greeting object id: #{informal_greeting.object_id}"

puts informal_greeting
puts "informal_greeting object id: #{informal_greeting.object_id}"
puts greetings
puts "greetings object id: #{greetings.object_id}"
=end

# Question 3A
#This will print "one is: one \n two is: two \n three is: three"

=begin
def mess_with_vars(one, two, three)
  p one.object_id
  p two.object_id
  p three.object_id

  one = two
  two = three
  three = one

  p one.object_id
  p two.object_id
  p three.object_id

end

one = "one"
two = "two"
three = "three"

p one.object_id
p two.object_id
p three.object_id

mess_with_vars(one, two, three)

p one.object_id
p two.object_id
p three.object_id

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
=end


# Question 3B
=begin
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
=end


# Question 3C
=begin
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
=end

# Question 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      break unless is_an_ip_number?(word)
    end
    false
  end
  return true
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

