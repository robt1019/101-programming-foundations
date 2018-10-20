def substrings_at_start(string)
  substrings = []
  0.upto(string.size - 1) { |index| substrings << string[0..index]}
  substrings
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']