MAX_STRING_WIDTH = 76 

def print_in_box(string)
  puts '+--+'.insert(2, ('-' * string.length))
  puts '|  |'.insert(2, (' ' * string.length))
  puts '|  |'.insert(2, string)
  puts '|  |'.insert(2, (' ' * string.length))
  puts '+--+'.insert(2, ('-' * string.length))
end

def print_in_box_terminal_safe(string)
  string_width = string.length > MAX_STRING_WIDTH ? MAX_STRING_WIDTH : string.length
  text_row_count = (string.length / MAX_STRING_WIDTH) + 1

  top_bottom_row = '+--+'.insert(2, ('-' * string_width))
  padding_row = '|  |'.insert(2, (' ' * string_width))

  puts top_bottom_row
  puts padding_row
  text_row_count.times do
    string_to_insert = string.slice!(0, string_width)
    puts '|  |'.insert(2, string_to_insert + (' ' * (string_width - string_to_insert.length))) 
  end
  puts padding_row
  puts top_bottom_row
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box("To boldly go where no one has gone before is a worthwile endeavor befitting the best of times the worst of times. Don't you agree Kermit?.")
puts
print_in_box_terminal_safe('')
print_in_box_terminal_safe('To boldly go where no one has gone before.')
print_in_box_terminal_safe("To boldly go where no one has gone before is a worthwile endeavor befitting the best of times the worst of times. Don't you agree Kermit?.")
print_in_box_terminal_safe("To boldly go where no one has gone before is a worthwile endeavor befitting the best of times the worst of times. Don't you agree Kermit? Or are you just going to sit there and pout?")