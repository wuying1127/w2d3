require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    full_deck
  end

  def shuffle
    cards.shuffle!
  end

  def deal_card
    cards.pop
  end

  private

  def full_deck
    value = 2
    SUITS.each do |suit|
      NAMES.each do |name|
        value = 2 if value > 14
        cards << Card.new(name, suit, value)
        value += 1
      end
    end
  end

  SUITS = [:club, :diamond, :heart, :spade]
  NAMES = %W[TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN JACK QUEEN KING ACE]

end
