def bubble_sort!(array)
  elements_to_check = array.length
  loop do
    swap_count = 0
    counter = 0
    1.upto(elements_to_check - 1) do
      if (array[counter] > array[counter + 1])
        array[counter], array[counter + 1] = array[counter + 1], array[counter]
        swap_count += 1
      end
      counter += 1
    end
    elements_to_check -= 1
    break if swap_count == 0
  end
  array
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)