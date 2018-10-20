CONSONANT_REGEX = /[BCDFGHJKLMNPQRSTVXZWY]/i

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

def double_consonants(string)
  doubled_consonants_array = string.chars.map do |char|
    if char =~ CONSONANT_REGEX 
      char * 2
    else
      char
    end
  end
  p doubled_consonants_array.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
puts
puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""