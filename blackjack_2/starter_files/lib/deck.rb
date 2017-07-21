require_relative "card"

class Deck

  attr_accessors :card_container

  def initialize
    @card_container = []
    build_deck
  end


  def build_deck
    Card.suits.each do |suit|
      Card.faces.each do |face|
        card_container << card.new(face, suit)
      end
    end
  end

  def shuffle
    card_container.shuffle!
  end

  def draw
    card_container.shift
  end

  
