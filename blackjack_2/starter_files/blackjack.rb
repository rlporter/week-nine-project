puts "TODO Implement the game of blackjack."

require_relative ".lib/card"
require_relative ".lib/deck"

class Game

  def initialize (play_hand, deal_hand, money_talley)
    @play_hand = play_hand
    @deal_hand = deal_hand
    @money_talley = money_talley
  end
end

  def start_prompt
  puts "Wanna play?"
end

  def get_yes_or_no
  while true
    print "Please enter yes or no: "
    answer = gets.chomp.downcase
    if answer[0] == "yes"
      return true
    elsif answer[0] == "no"
      return false
    end
    puts "That is not a valid answer!"
  end
end

  def start_game
    if answer = true
    puts "You start with $100 and bet $10."
  end

  def initial_deal
    build_deck
    shuffle
    
  end

  def player_hand
    player_cards = [ ]
    2.times do
    # pcard1 = play_hand.new
    # draw.card
    # puts "Your first card is: #{pcard1}."
    # deal_card1 = deal_hand.new
    # draw.card
    # puts "Dealer card is: #{dcard1}."
    # pcard2 = play_hand.new
    # puts "Your second card is: #{pcard2} and the total is (#{pcard1.value} + #{pcard2.value})"

  end

  def dealer_hand
    dealer_cards = [ ]


  def player_hit_stay
  end

  def dealer_turn
  end

  def game_status
  end

  def end_game
  end


end
