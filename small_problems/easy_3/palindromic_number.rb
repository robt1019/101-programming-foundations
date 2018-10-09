def palindromic_number?(number)
  stringified_number = number.to_s
  stringified_number == stringified_number.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true