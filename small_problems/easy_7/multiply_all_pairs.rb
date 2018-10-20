def multiply_all_pairs(array1, array2)
  unsorted_pair_products = array1.product(array2).map do |sub_array| 
    sub_array.inject(:*)
  end
  unsorted_pair_products.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]