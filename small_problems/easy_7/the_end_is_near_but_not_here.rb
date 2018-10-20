def penultimate(words)
  words.split[-2]
end

def middle_word(words)
  words_array = words.split
  number_of_words = words_array.size

  if number_of_words == 0
    return nil 
  elsif number_of_words.even? 
    return nil 
  else
    return words_array[number_of_words/2]
  end
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

puts middle_word('Last word')
puts middle_word('Launch Schools is great!')
puts middle_word('Launch Schools is really great!')
puts middle_word('Launch')
puts middle_word('')