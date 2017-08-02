# Repeat Yourself
def valid_string?(str)
  str.is_a? String
end

def valid_int?(int)
  int.is_a? Integer
end

def repeat(str, int)
  if valid_string?(str)
    if valid_int?(int)
      int.times { puts str } 
    else
        puts "Invalid integer."
    end
  else
      puts "Invalid string."
  end
end

repeat("cat", "cat")
repeat(5, 5)
repeat(5, "cat")
repeat("cat", 5)