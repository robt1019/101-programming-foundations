arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_array = arr.map do |sub_array|
  sub_array.select do |element|
    element % 3 == 0
  end
end

p new_array