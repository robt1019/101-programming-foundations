print "Please write word or multiple words: "
word_or_words = gets.chomp

character_count = word_or_words.split.join('').size

puts "There are #{character_count} characters in '#{word_or_words}'."