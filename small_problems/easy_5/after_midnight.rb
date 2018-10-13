HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def time_of_day(int)
  hours = (HOURS_IN_DAY + (int / MINUTES_IN_HOUR)) % HOURS_IN_DAY
  minutes = int % MINUTES_IN_HOUR

  "#{"%02d" % hours}:#{"%02d" % minutes}"
end

def time_string_to_minutes(time_string)
  hours, minutes = time_string.split(':')
  (hours.to_i * MINUTES_IN_HOUR) + minutes.to_i
end

def after_midnight(time_string)
  time_string_to_minutes(time_string) % MINUTES_IN_DAY
end

def before_midnight(time_string)
  (MINUTES_IN_DAY - time_string_to_minutes(time_string)) % MINUTES_IN_DAY
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
puts
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0