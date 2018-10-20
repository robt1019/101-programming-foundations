def double_odd_indices(array)
  doubled_odd_indices = []
  counter = 0

  loop do
    break if counter == array.size

    doubled_odd_indices << array[counter]
    doubled_odd_indices[counter] *= 2 if counter.odd?

    counter += 1
  end
  doubled_odd_indices
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_odd_indices(my_numbers)
p my_numbers