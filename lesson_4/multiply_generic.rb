def multiply(array, multiplier)
  counter = 0
  multiplied = []

  loop do
    break if counter == array.size
    multiplied << array[counter]
    multiplied[counter] *= multiplier
    counter += 1
  end
  multiplied
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers