def include?(array, item_to_find)
  counter = 0
  loop do
    break if counter == array.length
    value = array[counter]
    return true if value == item_to_find
    counter += 1
  end
  return false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false