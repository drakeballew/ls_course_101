# split time string by : to hours, mins
# multiply hours by 60 and add to minutes - add and subtract from daily mins

DAILY_MINS = 24 * 60


def split_time(time)
  hours, mins = time.split(':')
  return hours.to_i, mins.to_i
end

def after_midnight(time)
  hours, mins = split_time(time)
  if hours == 24
    hours = 0
  end
  (hours * 60) + mins
end

def before_midnight(time)
  hours, mins = split_time(time)
  if hours == 0
    hours = 24
  end
  DAILY_MINS - ((hours * 60) + mins)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
