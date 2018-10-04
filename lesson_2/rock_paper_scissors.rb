VALID_CHOICES = %w(rock paper scissors)

def player_won?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') ||
    (player1 == 'paper' && player2 == 'rock') ||
    (player1 == 'scissors' && player2 == 'paper')
end

def display_results(choice, computer_choice)
  prompt "You chose #{choice}, computer chose #{computer_choice}"
  if player_won?(choice, computer_choice)
    prompt 'You won!'
  elsif player_won?(computer_choice, choice)
    prompt 'Computer won!'
  else
    prompt "It's a tie!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp
    break if VALID_CHOICES.include?(choice)
    prompt 'Invalid choice'
  end

  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  prompt 'Play again? (y/n)'
  continue = gets.chomp == 'y'
  break unless continue
end
