# take a year
# find all fridays as dates (array)
# from, fridays, find all which have the day as 13

require 'date'

def friday_13th(year)
  Date.new(year).step(Date.new(year, -1,-1)).select{|d| d.friday? && d.mday == 13}.count
end

p friday_13th(2015)
