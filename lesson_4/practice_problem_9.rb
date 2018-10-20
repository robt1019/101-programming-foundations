def titleize(string)
  string.split().map { |word| word.capitalize }.join(' ')
end

puts titleize('the flintstones rock') == 'The Flintstones Rock'