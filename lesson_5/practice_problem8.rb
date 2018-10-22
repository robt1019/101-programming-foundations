hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |word_array|
  word_array.each do |word|
    word.chars.each { |char| puts char if char =~ /[^aeiou]/i }
  end
end

# hsh.each { |key, value| print value.join.delete('/[^aeiou]/i') }