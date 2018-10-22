arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

p arr.map do |object| 
  object.map { |key, value| [key, value + 1] }.to_h
end