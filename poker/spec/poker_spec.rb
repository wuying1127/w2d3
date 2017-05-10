require "card"
require "deck"
require "rspec"
require "hand"

describe Card do
  let(:card) { Card.new('Three', :club, 3)}

  describe "#initialize" do
    it 'initialize with name, suit and value' do
        expect(card.name).to eq('Three')
        expect(card.suit).to eq(:club)
        expect(card.value).to eq(3)
    end
  end
end

describe Deck do
  let(:deck) { Deck.new }
  # initialize with 52 cards - one of each



  describe "#initialize" do
    it 'initialize with a full deck - 52 uniq cards' do
      expect(deck.cards.uniq.count).to eq(52)
    end
  end

  describe '#shuffle' do
    it 'shuffles a deck of cards' do
      first_card = deck.cards[51]
      deck.shuffle
    expect(deck.cards[51]).to_not eq(first_card)
  end
end

# deals a card  (removes card from deck and returns card)
  describe '#deal_card' do
    it 'returns the first card from the deck' do
      first_card = deck.cards[51]
      expect(deck.deal_card).to eq(first_card)
    end

    it 'removes the first card from the deck' do
      first_card = deck.cards[51]
      deck.deal_card
      card_removed = deck.cards.none? { |card| card == first_card }
      expect(card_removed).to eq(true)
    end
  end
end

describe Hand do
  let(:new_hand) { Hand.new }
  let(:card) { Card.new('FOUR', :diamond, 4) }
  describe "#initialize" do
    it 'initialize as empty array of cards' do
      expect(new_hand.cards).to eq([])
    end
  end

  describe "#value" do
    it 'return a value for a hand of card' do

    end
  end

  describe "add_card" do
    it 'add a card to hand' do
      new_hand.add_card(card)
      expect(new_hand.cards[-1]).to eq(card)
    end
  end

end
