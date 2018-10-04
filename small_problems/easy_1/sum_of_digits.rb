def sum(int) 
  int.to_s.split('').reduce(0) { |sum, num_char| sum + num_char.to_i } 
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45