def double_numbers!(numbers_array)
  counter = 0;

  loop do
    break if counter == numbers_array.size
    numbers_array[counter] *= 2
    counter += 1
  end

  numbers_array
end

my_numbers = [1, 4, 3, 7, 2, 6]

p my_numbers

double_numbers!(my_numbers)

p my_numbers