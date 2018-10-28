SENTENCE_TERMINATORS = '.!?'

def longest_sentence(file_name)
  text = File.read(file_name)

  sentences = text.split(/[.!?]/)

  longest = sentences.max_by { |sentence| sentence.split.size }

  longest.split.size 
end

puts longest_sentence('test1.txt') == 86
puts longest_sentence('84-0.txt') == 157
