DIGIT_TO_STRING = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  return '0' if integer.zero?
  string = ''
  loop do
    break if integer.zero?
    current_digit_string = DIGIT_TO_STRING[integer % 10]
    string.prepend(current_digit_string)
    integer /= 10
  end
  string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
