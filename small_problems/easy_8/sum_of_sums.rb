def sum_of_sums(array)
  array.each.with_index do |value, index|
    if index > 0 
      array[index] = array[index - 1] + value
    else
      array[index] = value
    end
  end
  array.reduce(:+)
end

# def sum_of_sums(array)
#   sum_total = 0
#   1.upto(array.size) do |count|
#     sum_total += array.slice(0, count).reduce(:+)
#   end
#   sum_total
# end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4

p array = [1, 2, 3, 4, 5]
puts sum_of_sums(array) == 35
p array