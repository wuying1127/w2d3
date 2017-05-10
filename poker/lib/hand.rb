class Hand
  attr_reader :cards

  def initialize
    @cards = []
    @value = {}
  end

  def add_card(card)
    cards.push(card)
  end
  # more than one of same value -> pair , three of a kind, four of a kind
end

[type, level, high_card]
