def digits_occur_once?(number)
  number.to_s.chars == number.to_s.chars.uniq
end

def featured?(number)
  number.odd? && number % 7 == 0 && digits_occur_once?(number) 
end

def featured(number)
  return 'There is no possible number that fulfills those requirements' if number > 9_876_543_210
  counter = number + 1
  loop do
    break if featured?(counter)
    counter += 1
  end
  counter
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements