# take number, check if it is a multiple of 7 and odd
## if % 7 == 0 && .odd?
# check if digits only occur once each
## each num.to_s.scan(/(?=char)/).count
# if all true, then return number else increment by one and check again

require 'pry-byebug'

def featured(num)
  arr = []
  counter = 0
  loop do
    num.to_s.chars.each do |char|
      arr << num.to_s.scan(char).count
    end

    break if arr.uniq == [1] && num % 7 == 0 && num.odd? && counter > 0

    num += 1
    counter += 1
    arr = []
  end
  num
end

p featured(999_999_987)
