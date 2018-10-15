DEGREE = "\xC2\xB0"

def dms(angle_in_degrees)
  degrees = angle_in_degrees
  minutes = (degrees % 1) * 60
  seconds = (minutes % 1) * 60
  "#{degrees.floor}#{DEGREE}#{'%02d' % minutes.floor}'#{'%02d' % seconds.floor}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")