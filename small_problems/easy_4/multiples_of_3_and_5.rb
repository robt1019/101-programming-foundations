def multisum(number)
  multiples_of_3_and_5 = []
  while number > 2 do
    if (number % 3 == 0 || number % 5 == 0)
      multiples_of_3_and_5 << number
    end
    number -= 1
  end
  multiples_of_3_and_5.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168