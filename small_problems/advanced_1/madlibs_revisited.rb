NOUNS = %w(cat dog tail)
ADJECTIVES = %w(sleepy yellow brown)
ADVERBS = %w(lazily noisily)
VERBS = %w(licks eats)

def madlibs(text)
  p text
  line_array = text.split.map do |word|
  case
    when word.match(/\|adjective\|/) then word.gsub(/\|adjective\|/, ADJECTIVES.sample)
    when word.match(/\|noun\|/) then word.gsub(/\|noun\|/, NOUNS.sample)
    when word.match(/\|adverb\|/) then word.gsub(/\|adverb\|/, ADVERBS.sample)
    when word.match(/\|verb\|/) then word.gsub(/\|verb\|/, VERBS.sample)
    else
      word
    end
  end
  line_array.join(' ')
end

input_text = File.read('madlibs_input1.txt')

p madlibs(input_text)
