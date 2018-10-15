def only_letters(word)
  word.gsub(/[^A-Z]/i, '')
end

def word_sizes(string)
  word_size_counts = Hash.new(0)
  string.split.each do |word| 
    word_size_counts[only_letters(word).length] += 1
  end
  word_size_counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}