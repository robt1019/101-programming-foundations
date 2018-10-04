VALID_CHOICES = %w(rock paper scissors spock lizard)

def rock_beats?(choice)
  choice == 'lizard' || choice == 'scissors'
end

def paper_beats?(choice)
  choice == 'rock' || choice == 'spock'
end

def scissors_beat?(choice)
  choice == 'paper' || choice == 'lizard'
end

def spock_beats?(choice)
  choice == 'rock' || choice == 'scissors'
end

def lizard_beats?(choice)
  choice == 'paper' || choice == 'spock'
end

def player_won?(player1, player2)
  player1 == 'rock' && rock_beats?(player2) ||
    player1 == 'paper' && paper_beats?(player2) ||
    player1 == 'scissors' && scissors_beat?(player2)
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
    choice = VALID_CHOICES.
    break if VALID_CHOICES.include?(choice)
    prompt 'Invalid choice'
  end

  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  prompt 'Play again? (y/n)'
  continue = gets.chomp == 'y'
  break unless continue
end
