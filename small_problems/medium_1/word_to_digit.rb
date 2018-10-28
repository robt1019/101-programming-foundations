DIGIT_WORDS = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9',
}

def word_to_digit(string)
  digitised_array = string.split(/\b/).map do |word|
    if DIGIT_WORDS[word.downcase]
      word.gsub(/#{word}/, DIGIT_WORDS[word.downcase])
    else
      word
    end
  end
  p digitised_array.join
end

puts word_to_digit('Please call me at five five FIVE One two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
