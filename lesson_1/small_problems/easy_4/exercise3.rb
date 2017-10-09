# def leap_year?(num)
#   unless num % 100 == 0
#     return true if num % 4 == 0
#   end
#   return true if num % 100 == 0 && num % 400 == 0
#   false
# end

# Alternative solution
def leap_year?(num)
  (num % 400 == 0) || (num % 4 == 0 && num % 100 != 0)
end
