def balanced?(string)
  delimiters = [
    {
      count: 0,
      characters: ['(', ')']
    },
    {
      count: 0,
      characters: ['[', ']']
    },
    {
      count: 0,
      characters: ['\'', '\'']
    },
    {
      count: 0,
      characters: ['"', '"']
    },
  ]
  string.each_char do |char|
    delimiters.each do |delimeter|
      delimeter[:count] += 1 if char == delimeter[:characters].first 
      delimeter[:count] -= 1 if char == delimeter[:characters].last 
      return false if delimeter[:count] < 0
    end
  end
  delimiters.inject(0) { |total, delimeter| total + delimeter[:count] }.zero?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false

puts balanced?("How \"now brown cow") == false