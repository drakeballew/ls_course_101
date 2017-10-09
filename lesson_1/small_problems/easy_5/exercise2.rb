MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def calc_hours(num)
  num / MINUTES_PER_HOUR % HOURS_PER_DAY
end

def calc_minutes(num)
  num % MINUTES_PER_HOUR
end

def print_time(num)
  p "#{format('%02d:%02d',calc_hours(num),calc_minutes(num))}"
end

print_time(3000)
