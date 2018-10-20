# def interleave(array1, array2)
#   interleaved_arrays = []
#   array1.size.times do |index|
#     interleaved_arrays << array1[index]
#     interleaved_arrays << array2[index]
#   end
#   interleaved_arrays
# end

def interleave(array1, array2)
  array1.zip(array2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
