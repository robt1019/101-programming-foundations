arr = [
  {a: [1, 2, 3]},
  {b: [2, 4, 6], c: [3, 6], d: [4]},
  {e: [8], f: [6, 10]}
]

evens = arr.reject do |hash|
  hash.any? do |_, number_array|
    number_array.any? { |number| number.odd? }
  end
end

p evens