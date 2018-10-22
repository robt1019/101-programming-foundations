def buy_fruit(groceries_array)
  return_array = []
  groceries_array.to_h.each do |key, value|
    value.times { return_array << key }
  end 
  return_array
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]

[
  ['a', 'car', 'd'],
  ['a', 'car', 'd', 3], 
  ['a', 'cat', 'b', 'c'], 
  ['a', '2'] 
].sort