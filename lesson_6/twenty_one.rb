CARDS = ([
  { value: 2, name: '2' },
  { value: 3, name: '3' },
  { value: 4, name: '4' },
  { value: 5, name: '5' },
  { value: 6, name: '6' },
  { value: 7, name: '7' },
  { value: 8, name: '8' },
  { value: 9, name: '9' },
  { value: 10, name: '10' },
  { value: 10, name: 'Jack' },
  { value: 10, name: 'Queen' },
  { value: 10, name: 'King' },
  { value: 11, name: 'Ace' }
] * 4).flatten
VALID_COMMANDS = ['stick', 'twist']
MAX_SCORE = 21
DEALER_MAX_TWIST_VALUE = 17

def prompt(message)
  puts "==> #{message}"
end

def pick_card!(deck)
  deck.delete_at(rand(deck.length))
end

def adjust_hand_ace_values!(hand)
  loop do
    high_aces = hand.select { |card| card[:value] == 11 }
    break if high_aces.empty? || hand_value(hand) <= MAX_SCORE
    high_ace_index = hand.find_index { |card| card[:value] == 11 }
    hand[high_ace_index][:value] = 1
  end
end

def hand_value(hand)
  hand.reduce(0) { |total, card| total + card[:value] }
end

def print_player_hand(hand)
  hand_values = hand.map { |card| card[:name] }.join(', ')
  puts "You have #{hand_values}"
end

def print_dealer_hand(hand)
  hand_values = hand.map { |card| card[:name] }.join(', ')
  puts "Dealer is showing #{hand_values}"
end

def user_input
  input = nil
  loop do
    prompt "Stick or twist? ('stick' for stick, or 'twist' for twist)"
    input = gets.chomp
    break if VALID_COMMANDS.include?(input.downcase)
    puts "Invalid command. 'stick' or 'twist'"
  end
  input
end

def player_turn!(deck, player_cards)
  stick = false
  loop do
    player_move = user_input
    if player_move == 'twist'
      player_cards << pick_card!(deck)
      adjust_hand_ace_values!(player_cards)
      print_player_hand(player_cards)
    else
      stick = true
    end
    break if hand_value(player_cards) > MAX_SCORE || stick
  end
end

def dealer_turn!(deck, dealer_cards)
  loop do
    break if hand_value(dealer_cards) >= MAX_SCORE ||
             hand_value(dealer_cards) >= DEALER_MAX_TWIST_VALUE
    dealer_cards << pick_card!(deck)
    adjust_hand_ace_values!(dealer_cards)
  end
end

# Main Game

deck = CARDS.shuffle
player_cards = [pick_card!(deck), pick_card!(deck)]
dealer_cards = [pick_card!(deck), pick_card!(deck)]

print_player_hand(player_cards)
print_dealer_hand([dealer_cards[1]])

player_turn!(deck, player_cards)
player_score = hand_value(player_cards)

if player_score > MAX_SCORE
  puts "Player is bust with a score of #{player_score}. Dealer wins."
else
  dealer_turn!(deck, dealer_cards)
  print_dealer_hand(dealer_cards)
  dealer_score = hand_value(dealer_cards)
  if dealer_score > MAX_SCORE
    puts "Dealer is bust. Player wins with a score of #{player_score}"
  elsif dealer_score > player_score
    puts 'Dealer wins with a score of ' \
    "#{dealer_score} to player's #{player_score}"
  else
    puts 'Player wins with a score of ' \
    "#{player_score} to dealer's #{dealer_score}"
  end
end
