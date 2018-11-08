# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

CARDS = [ 
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
]

def prompt(message)
  puts "==> #{message}"
end

def initialise_deck()
  unshuffled_cards = CARDS * 4 
  unshuffled_cards.flatten.shuffle
end

def deal_card!(deck)
  deck.delete_at(rand(deck.length))
end

def adjust_hand_ace_values!(hand)
  high_aces = nil
  loop do
    high_aces = hand.select { |card| card[:value] == 11 }
    break if high_aces.length == 0 || hand_value(hand) <= 21
    high_ace_index = hand.find_index { |card| card[:value] == 11 }
    hand[high_ace_index][:value] = 1
  end
  hand
end

def hand_value(hand)
  hand.reduce(0) { |total, card| total += card[:value] }
end

def print_player_hand(hand)
  hand_values = hand.map { |card| card[:name] }.join(', ')
  puts "You have #{hand_values}"
end

def print_dealer_hand(hand)
  hand_values = hand.map { |card| card[:name] }.join(', ')
  puts "Dealer is showing #{hand_values}"
end

def player_turn!(deck, player_cards)
  valid_commands = ['stick', 'twist']
  stick = false
  user_input = nil
  loop do
    loop do
      prompt "Stick or twist? ('stick' for stick, or 'twist' for twist)"
      user_input = gets.chomp
      break if valid_commands.include?(user_input.downcase)
      puts "Invalid command. 'stick' or 'twist'"
    end
    if user_input == 'twist'
      player_cards << deal_card!(deck)
      adjust_hand_ace_values!(player_cards)
      print_player_hand(player_cards)
    else
      stick = true
    end
    break if hand_value(player_cards) >= 21 || stick
  end
  hand_value(player_cards)
end

def dealer_turn!(deck, dealer_cards)
  loop do
    break if hand_value(dealer_cards) >= 21 || hand_value(dealer_cards) >= 17
    dealer_cards << deal_card!(deck)
    adjust_hand_ace_values!(dealer_cards)
  end
  hand_value(dealer_cards)
end

deck = initialise_deck
player_score = 0
dealer_score = 0
player_cards = [deal_card!(deck), deal_card!(deck)]
dealer_cards = [deal_card!(deck), deal_card!(deck)]

print_player_hand(player_cards)
print_dealer_hand([dealer_cards[1]])

player_score = player_turn!(deck, player_cards)

if player_score > 21 
  puts "Player is bust with a score of #{player_score}. Dealer wins."
else
  dealer_score = dealer_turn!(deck, dealer_cards)
end

if dealer_score > 21
  puts "Dealer is bust. Player wins with a score of #{player_score}"
else
  if dealer_score > player_score
    puts "Dealer wins with a score of #{dealer_score} to player's #{player_score}"
  else
    puts "Player wins with a score of #{player_score} to dealer's #{dealer_score}"
  end
end
