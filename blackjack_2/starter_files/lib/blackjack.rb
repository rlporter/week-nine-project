require_relative "card"
require_relative "deck"

class Hand
  attr_accessor :cards

  def initialize
    @cards = []
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


class Game

attr_accessor :player_hand, :dealer_hand, :money_talley

  def initialize (player_hand, dealer_hand, money_talley)
    @deck = Deck.new
    @player_hand = Hand.new
    @dealer_hand = Hand.new
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

  def self.start_game
    if answer == true
    puts "You start with $100 and bet $10."
  end

  def initial_deal
    2.times {@player_hand.hit!@deck}
    2.times {@dealer_hand.hit!@deck}
    end
  end

  def game_status
    player_total = play_hand.each { |i| sum+=i}
    dealer_total = deal_hand.each {|j| sum+=j}
    puts "Your cards are:  #{player_cards}, and the total is #{player_total}."
    puts "Do you want to (h)it or (s)tand?"
    player_reply.get_yes_or_no
    # deal_card1 = deal_hand.new
    # draw.card
    # puts "Dealer card is: #{dcard1}."
    # pcard2 = play_hand.new
    # puts "Your second card is: #{pcard2} and the total is (#{pcard1.value} + #{pcard2.value})"

  end


  def player_hit_stay
  end

  # def dealer_turn
  # end
  #
  # def end_game
  # end


end
