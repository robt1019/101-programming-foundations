def order(array)
  array.map do |subarray|
    subarray.sort { |a, b| b <=> a }
  end
end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p order(arr)

