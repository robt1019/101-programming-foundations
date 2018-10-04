SQMETERS_TO_SQFEET = 10.7639
puts 'What is the length of the room in meters?'
length_in_meters = gets.to_f
puts 'What is the width of the room in meters?'
width_in_meters = gets.to_f
area_in_square_meters = (length_in_meters * width_in_meters).round(2)
area_in_square_feet = (area_in_square_meters * SQMETERS_TO_SQFEET).round(2)
puts "The area of the room is #{area_in_square_meters}" \
    " square meters (#{area_in_square_feet} square feet)."
