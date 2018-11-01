# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

require 'pry'

board = [
  ['*', '*', '*'],
  ['*', '*', '*'],
  ['*', '*', '*'],
]

def print_board(board)
  board.each do |row|
    row.each { |item| print item }
    puts
  end 
end

def prompt(message)
  puts "==> #{message}"
end

def integer?(string)
  string.to_i.to_s == string
end

def valid_move?(user_move, board)
  coordinate_array = user_move.split(',')
  coordinate_array.length == 2 && 
    coordinate_array[0].to_i > 0 && coordinate_array[1].to_i > 0 &&
    coordinate_array.all? { |element| integer?(element) } &&
    board[coordinate_array[0].to_i - 1][coordinate_array[1].to_i - 1] == '*'
end

def user_move(board)
  user_move = nil
  loop do
    prompt 'Which tile do you want to pick? (row, col)'
    user_move = gets.chomp
    break if valid_move?(user_move, board)
    prompt 'Invalid move. Tile must be available and instruction must be in format "row, col"'
  end

  user_move = user_move.split(',').map { |move| move.to_i }
  board[user_move[0]][user_move[1]] = 'x'
  board
end

print_board(board)
board = user_move(board)
print_board(board)


