def stringy(int)
  string = ''
  int.times { |i| string += i.even? ? '1' : '0' }
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
