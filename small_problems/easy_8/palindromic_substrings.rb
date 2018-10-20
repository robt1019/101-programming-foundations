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

def palindrome?(string)
  string.size > 1 && string.upcase == string.reverse.upcase
end

def palindromes(string)
  substrings(string).select { |substring| palindrome?(substring) }
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]