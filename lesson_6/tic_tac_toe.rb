def print_board(board)
  system 'clear'
  puts
  puts "     |     |"
  puts "  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}"
  puts "     |     |"
  puts
end

def prompt(message)
  print "==> #{message}: "
end

def valid_move?(move, board)
  move.length == 2 && board[move[0] - 1][move[1] - 1] == ' '
end

def get_user_move(board)
  user_move = nil
  loop do
    prompt 'Which square do you want to pick? (row, col)'
    user_move = gets.chomp.split(',').map(&:to_i)
    break if valid_move?(user_move, board)
    puts 'Invalid move. Square must be available and ' \
      'instruction must be in format "row, col".'
  end
  user_move
end

def do_move(move, board, player_piece)
  new_board = board.map { |row| row.map { |item| item } }
  new_board[move[0] - 1][move[1] - 1] = player_piece
  new_board
end

def user_move(board)
  do_move(get_user_move(board), board, 'X')
end

def random_move
  [rand(1..3), rand(1..3)]
end

def winning_move(board, player_piece)
  attempts = 0
  winner = false
  until winner || attempts == 1000
    move = random_move
    until valid_move?(move, board)
      move = random_move
    end
    winner = player_won?(player_piece, do_move(move, board, player_piece))
    attempts += 1
  end
  return move if winner
  winner
end

def attempt_non_human_winning_move(board)
  attempts = 0
  move = random_move
  non_human_winning_move = false

  until non_human_winning_move || attempts == 1000
    move = random_move
    until valid_move?(move, board)
      move = random_move
    end
    non_human_winning_move = !winning_move(do_move(move, board, 'O'), 'X')
    attempts += 1
  end
  move
end

def optimal_computer_move(board)
  return [2,2] if valid_move?([2,2], board)
  winning_move(board, 'O') || attempt_non_human_winning_move(board)
end

def computer_move(board)
  do_move(optimal_computer_move(board), board, 'O')
end

def complete_row?(player_piece, board)
  board.any? { |row| row.count(player_piece) == 3 }
end

def complete_col?(player_piece, board)
  0.upto(2).to_a.any? do |index|
    board[0][index] == player_piece &&
      board[1][index] == player_piece &&
      board[2][index] == player_piece
  end
end

def complete_diagonal?(player_piece, board)
  board[1][1] == player_piece &&
    ((board[0][0] == player_piece && board[2][2] == player_piece) ||
        (board[0][2] == player_piece && board[2][0] == player_piece))
end

def player_won?(player_piece, board)
  complete_row?(player_piece, board) ||
    complete_col?(player_piece, board) ||
    complete_diagonal?(player_piece, board)
end

def moves_available?(board)
  board.any? { |row| row.count(' ') > 0 }
end

def check_for_winner(board)
  if player_won?('X', board)
    'human'
  elsif player_won?('O', board)
    'computer'
  end
end

play_again = true

while play_again

  board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ]

  winner = nil
  human_turn = true

  loop do
    if human_turn
      print_board(board)
      board = user_move(board)
    else
      board = computer_move(board)
    end
    winner = check_for_winner(board)
    break if winner || !moves_available?(board)
    human_turn = !human_turn
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

puts 'Goodbye!'
