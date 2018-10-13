def char_to_int(char, place)
  char_int_hash = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
  }
  char_int_hash[char] * 10 ** (place - 1)
end

def string_to_integer(string)
  sum = 0
  string.chars.each.with_index do |char, index| 
    sum += char_to_int(char, string.length - index)
  end
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts string_to_integer('57099') == 57099
puts string_to_integer('70') == 70
puts string_to_integer('999') == 999 