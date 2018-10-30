def sum_square_difference(n)
  n_array = (1..n).to_a

  sum_square = n_array.sum ** 2
  square_sum = n_array.map { |int| int ** 2 }.sum

  sum_square - square_sum
end

puts sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150