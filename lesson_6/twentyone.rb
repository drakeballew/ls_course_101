require 'pry-byebug'

SUITS = %w(C D H S)
CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']


def create_hands
  player_hand = [], dealer_hand = []
end

def new_deck
  deck = SUITS.product(CARDS)
end

def shuffle_deck(deck)
  deck.shuffle!
end

def deal_initial_cards(player_hand, dealer_hand, deck)
  2.times do player_hand << deck.pop end
  2.times do dealer_hand << deck.pop end
end

def calculate_aces_value(hand)
  ace_count = 0
  hand.each do |card|
    if card[1] == 'A'
      ace_count += 1
    end
  end

  ace_value =
    case
      when ace_count == 0
        0
      when ace_count == 1 && calculate_other_cards_value(hand) > 10
        1
      when ace_count == 1 && calculate_other_cards_value(hand) <= 10
        11
      when ace_count == 2 && calculate_other_cards_value(hand) > 9
        2
      when ace_count == 2 && calculate_other_cards_value(hand) <= 9
        12
      when ace_count == 3 && calculate_other_cards_value(hand) > 8
        3
      when ace_count == 3 && calculate_other_cards_value(hand) <= 8
        13
      when ace_count == 4 && calculate_other_cards_value(hand) > 7
        4
      when ace_count == 4 && calculate_other_cards_value(hand) <= 7
        14
    end
  ace_value
end

def calculate_other_cards_value(hand)
  hand_value = 0
  hand.each do |card|
    if card[1] == 'A'
      0
    elsif card[1].to_i == 0
      hand_value += 10
    else
      hand_value += card[1]
    end
  end
  hand_value
end

def calculate_hand_value(hand)
  calculate_aces_value(hand) + calculate_other_cards_value(hand)
end

def player_turn(deck, player_hand, dealer_hand)
  response = nil
  loop do
    puts "Hit or stay? (H or S)"
    response = gets.chomp.downcase
    break if ['s'].include?(response)
    puts "You hit."
    deal_one_card(deck, player_hand)
    display_hands(player_hand, dealer_hand)
    if busted?(player_hand) || twenty_one!(player_hand)
      declare_win_or_bust('Player', player_hand)
    end
    break if busted?(player_hand) || twenty_one!(player_hand)
  end
end

def dealer_turn(deck, player_hand, dealer_hand)
  unless busted?(player_hand) || twenty_one!(player_hand)
    loop do
      if calculate_hand_value(dealer_hand) < 17
        loop do
          puts "Dealer hits."
          deal_one_card(deck, dealer_hand)
          display_hands(player_hand, dealer_hand)
          declare_win_or_bust('Dealer', dealer_hand)
          if busted?(dealer_hand) || twenty_one!(dealer_hand)
            declare_win_or_bust('Player', player_hand)
          end
          break if busted?(dealer_hand) || twenty_one!(dealer_hand)
        end
      end
      break
    end
  end
end

def deal_one_card(deck, hand)
  hand << deck.pop
end

def display_hands(player_hand, dealer_hand)
  puts "Player hand: #{player_hand}"
  puts "Dealer hand: #{dealer_hand}"
  # puts "Dealer hand: #{dealer_hand[0]}#{' + [?]' * dealer_hand[1..-1].count}"
end

def busted?(hand)
  calculate_hand_value(hand) > 21
end

def twenty_one!(hand)
  calculate_hand_value(hand) == 21
end

def declare_win_or_bust(player, hand)
  if twenty_one!(hand)
    puts "Blackjack! #{player} wins!"
    play_again?
  elsif busted?(hand)
    puts "#{player} busted with #{calculate_hand_value(hand)}."
    play_again?
  end
end

def compare_hand_values(player_hand, dealer_hand)
  unless busted?(player_hand) || busted?(dealer_hand)
    calculate_hand_value(player_hand) > calculate_hand_value(dealer_hand) ? true : false
  end
end

def declare_winner(player_hand, dealer_hand)
  binding.pry
  if compare_hand_values(player_hand, dealer_hand)
    puts "Player wins with #{calculate_hand_value(player_hand)} over #{calculate_hand_value(dealer_hand)}."
  else
    puts "Dealer wins with #{calculate_hand_value(dealer_hand)} over #{calculate_hand_value(player_hand)}."
  end
end

def play_again?
  response = nil
  loop do
    puts "Play again? (Y/N)"
    response = gets.chomp.downcase
    break if ['y', 'n'].include?(response)
  end
  if response == 'y'
    play_blackjack
  else
    puts "Thanks for playing!"
    exit
  end
end

def play_blackjack
  deck = new_deck
  shuffle_deck(deck)
  player_cards, dealer_cards = create_hands
  deal_initial_cards(player_cards, dealer_cards, deck)
  display_hands(player_cards, dealer_cards)
  player_turn(deck, player_cards, dealer_cards)
  dealer_turn(deck, player_cards, dealer_cards)
  compare_hand_values(player_cards, dealer_cards)
  declare_winner(player_cards, dealer_cards)
  play_again?
end

play_blackjack
