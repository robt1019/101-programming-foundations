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

play_again = true

def print_board(board)
  puts
  board.each do |row|
    row.each { |item| print item }
    puts
  end
  puts
end

def prompt(message)
  print "==> #{message}: "
end

def valid_move?(move, board)
  move.length == 2 && board[move[0] - 1][move[1] - 1] == '*'
end

def user_move(board)
  user_move = nil
  loop do
    prompt 'Which square do you want to pick? (row, col)'
    user_move = gets.chomp.split(',').map { |item| item.to_i }
    break if valid_move?(user_move, board)
    prompt 'Invalid move. Square must be available and instruction must be in format "row, col".'
  end

  board[user_move[0] - 1][user_move[1] - 1] = 'x'
  board
end

def random_move
  [rand(1..3), rand(1..3)]
end

def computer_move(board)
  return board if !moves_available?(board)
  move = random_move
  until valid_move?(move, board)
    move = random_move
    move
  end
  board[move[0] - 1][move[1] - 1] = 'o'
  board
end

def player_won?(player_piece, board)
  board.any? { |row| row.count(player_piece) == 3 }
end

def moves_available?(board)
  board.any? { |row| row.count('*') > 0 }
end

def check_for_winner(board)
  if player_won?('x', board)
    'human'
  elsif player_won?('o', board)
    'computer'
  end
end

while play_again 

  board = [
    ['*', '*', '*'],
    ['*', '*', '*'],
    ['*', '*', '*'],
  ]

  winner = nil

  until winner || !moves_available?(board) 
    print_board(board)
    board = user_move(board)
    board = computer_move(board)
    winner = check_for_winner(board)
  end

  print_board(board)

  if winner
    puts "#{winner} won!"
  else
    puts 'tie!'
  end

  prompt 'Play again? (y/n)'
  user_response = gets.chomp
  play_again = user_response == 'y' ? true : false
end

prompt 'Goodbye!'
