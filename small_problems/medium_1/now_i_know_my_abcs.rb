BLOCKS = [
  %w(B O), %w(X K), %w(C P), %w(N A),
  %w(G T), %w(R E), %w(J W), %w(H U),
  %w(V I), %w(L Y), %w(Z M)
]

def block_char_index(char)
  BLOCKS.index do |block|
    block.first.casecmp?(char) || block.last.casecmp?(char)
  end
end

def block_word?(word)

  chars = word.chars
  used_blocks = []
  counter = 0

  loop do
    break if counter == chars.length
    char = chars[counter] 
    block_index = block_char_index(char)
    if block_index
      if(used_blocks.include?(block_index))
        return false
      else
        used_blocks << block_index
      end
    end
    counter += 1
  end
  return true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true