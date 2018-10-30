def friday_13th(year)
  friday_13ths = 0
  1.upto(12) do |month|
    thirteenth = Time.new(year, month, 13)
    friday_13ths += 1 if thirteenth.friday?
  end
  friday_13ths
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2