def is_an_ip_number?(number)
  return false
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  return false if dot_separated_words.size != 4

  dot_separated_words.each do |word|
    return false if !is_an_ip_number?(word)
  end

  true
end

puts(dot_separated_ip_address?('14.4.14.1'))
