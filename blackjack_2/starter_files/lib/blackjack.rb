require_relative "card"
require_relative "deck"
require_relative "hand"

class Game

attr_accessor :card, :deck, :hand_value, :player_hand, :dealer_hand, :money_talley

  def initialize(player_hand, dealer_hand, money_talley)
    @deck = Deck.new
    @player_hand = Hand.new
    @dealer_hand = Hand.new
    @money_talley = 100
  end

  def get_yes_or_no
  while true
    print "Please enter yes or no: "
    answer = gets.chomp.downcase
    if answer[0] == "yes"
      return true
    elsif answer[0] == "no"
      return false
    else
    puts "That is not a valid answer!"
  end
end

  def start_prompt
    puts "Wanna play?"
    get_yes_or_no
  end

  def start_game
    if answer == true
      player_hand = []
      dealer_hand = []
      puts "You start with #{money_talley} and bet $10."
    else
      puts "Okay. Another time."
      end_game
    end
  end

  def initial_deal
    2.times {@player_hand.hit!@deck}
    2.times {@dealer_hand.hit!@deck}
    end
  end

  def game_status
    player_total = player_hand.hand_value.each { |i| sum+=i}
    dealer_total = dealer_hand.hand_value.each {|j| sum+=j}
    puts "Your cards are:  #{player_hand.to_s}, and the total is #{player_total.to_i}."
    if player_hand.hand_value == 21
      puts "Blackjack! You win!"
      end_game
    else
      puts "First dealer card is: #{dealer_hand[0].to_s}."
      player_turn
    end
  end

  def player_turn
     puts "Do you want to hit (yes) or stand (no)?"
    get_yes_or_no
    if answer == true
      deck.draw << player_hand
      puts "Your cards are:  #{player_hand.to_s}, and the total is #{player_total.to_i}."
      while player_hand !bust?
        player_turn
      end
    else
      dealer_turn
    end
  end
end

  def end_game
    puts "Game over."
    exit
  end

  def bust?
    hand_value > 21
    puts "Busted! Play again?"
    get_yes_or_no
    if answer == true
      play_again
    else
    end_game
  end
end

  def dealer_turn
    puts "Dealer second card is: #{dealer_hand[1].to_s} and the total is #{dealer_total.to_i}"
    if dealer_hand.hand_value == 21
      puts "Blackjack! Dealer wins!"
      end_game
    elsif dealer_hand.hand_value < 17
      puts "Dealer hits."
      while (dealer_hand.hand_value < 17 && dealer_hand.hand_value != bust?)
        deck.draw << dealer_hand
      end
    elsif (dealer_hand.hand_value >= 17 && dealer_hand.hand_value < 21)
      puts "Dealer stands."
    elsif dealer_hand.hand_value > 21
      puts "Dealer is busted. You win!"
      game_total
    else game_total
    end
  end

  def game_total
    if player_hand.hand_value > 21
      bust?
    elsif player_hand.hand_value > dealer_hand.hand_value
      puts "Player wins! Play again?"
      get_yes_or_no
      if answer == true
        play_again
      else
      end_game
    end
    elsif dealer_hand.hand_value > player_hand.hand_value
      puts "Dealer wins! Play again?"
      if answer == true
        play_again
      else
        puts "Okay, bye."
        end_game
      end
    end
  end

  def play_again?
    @player_win = player_hand !bust? && player_hand.hand_value > dealer_hand.hand_value
    if player_win
      @money_talley = 100
    else set(@money_talley -= 10)
    start_game
  end
end

Game.new.start_prompt
