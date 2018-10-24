def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(integer)
  rotate_string(integer.to_s).to_i
end 
 
def rotate_rightmost_digits(digits, n)
  digit_chars = digits.to_s.chars
  left_half, right_half = digit_chars.partition.with_index do |_, index|
    index < digit_chars.length - n
  end
  (left_half + rotate_array(right_half)).join.to_i
end

def max_rotation(digits)
  rotated = digits 
  digits_length = digits.to_s.length
  counter = digits_length
  loop do
    break if counter == 2
    rotated = rotate_rightmost_digits(rotated, counter)
    counter -= 1
  end
  rotated
end

puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

puts 

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

puts

puts rotate_string('string')
puts rotate_integer(10003)
puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]     