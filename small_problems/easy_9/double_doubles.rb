def double_number?(number)
  stringified = number.to_s
  return false if stringified.length.odd?

  half_point = stringified.length / 2

  first_half = stringified[0..half_point - 1]
  second_half = stringified[half_point..stringified.length]

  first_half == second_half
end

def twice(number)
  double_number?(number) ? number : number * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
