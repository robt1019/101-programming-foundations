def halvsies(array)
  mid_point = (array.length-1) / 2
  [ array[0..mid_point], array[mid_point+1..-1] ]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]