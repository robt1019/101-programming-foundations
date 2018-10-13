
def swap_last_first_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  words = string.split
  words.map do |word| 
    swap_last_first_letters(word)
  end
  words.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'