require 'towers'
require 'rspec'



describe TowersOfHanoi do
  let(:new_game) { TowersOfHanoi.new }
  let(:new_towers) { Array.new([[3, 2, 1], [], []]) }
  # it 'Uses arrays to represent towers' do
  #
  # end
describe '#initialize' do
  it 'initializes with all discs on the first tower' do
    expect(new_game.towers).to eq(new_towers)
  end

end



describe '#move' do

  it 'checks for valid move' do
    expect(new_game).to receive(:valid_move?)
    new_game.move(0, 1)
  end

  it 'selects only the top disc from a tower' do
    new_game.move(0,1)
    expect(new_game.towers).to eq([[3, 2], [1], []])
  end

  it 'places disc on top of a tower' do
    new_game.move(0, 1)
    new_game.move(1, 0)
    expect(new_game.towers).to eq(new_towers)
  end

  # it "doesn't make an invalid move" do
  #
  # end

  # it 'moves only one disc from one tower to another'

end

describe '#valid_move?' do

  it 'returns false new tower has a smaller disc' do
    new_game.move(0, 1)
    expect(new_game.valid_move?(0, 1)).to eq(false)
  end

  it 'it returns false if move from tower is empty' do
    expect(new_game.valid_move?(2, 3)).to eq(false)
  end

end

describe '#won?' do
let(:won_towers) { Array.new([[], [], [3,2,1]]) }
  it 'returns true if all discs move to last tower' do
    expect(new_game.won?(won_towers)).to eq(true)
  end


  it 'return false until the game is over' do
    expect(new_game.won?(new_game.towers)).to eq(false)
  end

end
end
