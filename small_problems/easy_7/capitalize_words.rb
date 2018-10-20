def word_cap(string)
  capitalized_words = string.split.map do |word|
    word[0].upcase + word[1..-1].downcase
  end
  capitalized_words.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'