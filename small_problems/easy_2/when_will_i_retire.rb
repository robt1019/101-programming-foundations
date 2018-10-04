puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

remaining_years = retirement_age - age 
current_year = Time.now.year
retirement_year = current_year + remaining_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{remaining_years} years of work to go!"
