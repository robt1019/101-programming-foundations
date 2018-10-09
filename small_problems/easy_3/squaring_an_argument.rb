def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

def power(number, power)
  result = number
  (power-1).times { result = multiply(result, number) }
  result
end

puts square(2) == 4
puts square(3) == 9
puts square(-8) == 64 
  
puts power(2, 3)
puts power(3, 4)