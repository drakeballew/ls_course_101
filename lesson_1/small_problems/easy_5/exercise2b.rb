# hours = 1440 + num / 60
# mins = 1440 % 60
# print time
## if hours == 24, print zeros otherwise hours
## left pad 0's - rjust

DAILY_MINS = 24 * 60

def time_of_day(mins)
  hours = (DAILY_MINS + mins) / 60 % 24
  mins  = (DAILY_MINS + mins) % 60

  if hours == 24
    hours = '00'
  end

  p "#{hours.to_s.rjust(2, '0')}:#{mins.to_s.rjust(2, '0')}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
