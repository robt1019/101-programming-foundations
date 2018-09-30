vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  vehicle_counts = Hash.new(0)
  array.each { |item| vehicle_counts[item] += 1}
  vehicle_counts
end

puts count_occurrences(vehicles)