def reverse!(array)
  left = 0
  right = array.length-1

  loop do
    break if left >= right
    temp = array[left]
    array[left] = array[right]
    array[right] = temp
    left += 1
    right -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
p reverse!(list) # => []
puts list == []

def reverse(array)
  reversed_array = []
  array.each { |value| reversed_array.unshift(value) }
  reversed_array
end

# def reverse(array)
#   array.reduce([]) { |reversed_array, item| reversed_array.unshift(item) }
# end

# def reverse(array)
#   array.each_with_object([]) { |item, reversed_array| reversed_array.unshift(item) }
# end

puts
puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true