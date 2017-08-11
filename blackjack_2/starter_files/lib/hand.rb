require_relative "card"
require_relative "deck"

class Hand
  attr_accessor :cards, :player_hand, :dealer_hand, :hand_value

  def initialize
    @cards = []
    @player_hand = []
    @dealer_hand = []
  end

  def hit!(deck)
    @cards << deck.cards.shift
  end

  def hand_value
    hand_value = 0
    @cards.each do |card|
      hand_value += card.value
    end
      hand_value
  end
end
