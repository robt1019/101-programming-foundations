def cleanup_regex(string)
  string.gsub(/[^A-Z]+/i, ' ')
end

def cleanup_non_regex(string)
  letters_hash = Hash.new
  Array('a'..'z').each { |letter| letters_hash[letter] = true }
  (string.chars.map { |letter| letters_hash[letter.downcase] ? letter : ' ' }).join.squeeze(' ')
end

puts cleanup_regex("---what's my +*& line?") == ' what s my line '
puts cleanup_non_regex("---what's my +*& line?") == ' what s my line '