numbers_to_check = []
ordinals = %w(1st 2nd 3rd 4th 5th)

ordinals.each do |ordinal|
  puts "Enter the #{ordinal} number:"
  numbers_to_check << gets.to_i
end

puts 'Enter the last number:'
number_to_find = gets.to_i

number_found = numbers_to_check.include?(number_to_find)

puts "The number #{number_to_find} " \
     "#{number_found ? 'appears ' : 'does not appear '}" \
     "in #{p numbers_to_check}"
