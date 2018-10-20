def substrings_at_start(string)
  substrings = []
  0.upto(string.size - 1) { |index| substrings << string[0..index]}
  substrings
end

def substrings(string)
  substrings = []
  0.upto(string.size - 1) do |index|
    substrings << substrings_at_start(string[index..-1])
  end
  substrings.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]