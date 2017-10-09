MINUTES_PER_HOUR = 60

def after_midnight(time)
  hours, minutes = time.split(':')
  if hours == '24'
    minutes.to_i
  else
    (hours.to_i * MINUTES_PER_HOUR) + minutes.to_i
  end
end

def before_midnight(time)
  if after_midnight(time).zero?
    0
  else
    1440 - after_midnight(time)
  end
end

puts after_midnight('24:00')
puts before_midnight('24:00')
