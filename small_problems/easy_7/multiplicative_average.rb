def show_multiplicative_average(array_of_ints)
  array_product = array_of_ints.inject(:*)
  multiplicative_average = array_product.to_f / array_of_ints.size.to_f

  puts "The result is #{format("%.3f", multiplicative_average)}"
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
