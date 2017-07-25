class Card
  attr_accessors
  :face, :suit, :value
  def self.faces
    %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)
  end

    def self.suits
      %w(clubs diamonds hearts spades)
    end

def set_value
  if %w(Jack Queen King).include?
    value == 10
  elsif face == "Ace"
    value == 1
  else value == face.to_i
  end

  def initialize (face, suit)
    @face = face
    @suit = suit
    set_value
  end

  def +(other_card)
    value + other_card.value
  end

  def to_s
    "#{face} of #{suit}"
  end
end
end
