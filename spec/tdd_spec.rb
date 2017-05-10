# my_uniq - just test that its working
require 'tdd'
require 'rspec'

describe "#my_uniq" do
  let(:arr) { Array.new([1,2,1,3,3]) }
  it 'returns array with duplicates removed' do
    # arr = [1,2,1,3,3]
    expect(arr.my_uniq).to eq([1,2,3])
  end

  it 'does not mutate orginal array' do
    # arr = [1,2,1,3,3]
    arr.my_uniq
    expect(arr).to eq([1,2,1,3,3])
  end
end

describe '#two_sum' do
  it 'finds all pairs of positions where the elements at those positions sum to zero' do
    arr = [-1, 0, 2, -2, 1]
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe '#my_transpose' do
  let (:arr) { Array.new([[1,2,3], [4,5,6], [7,8,9]]) }
  it 'will convert between the row-oriented and column-oriented representations' do
    transposed = [[1,4,7], [2,5,8], [3,6,9]]
    expect(arr.my_transpose).to eq(transposed)
  end
end

describe '#stock_picker' do
  let(:arr) { Array.new([3, 8, 10, 2, 5, 6, 1])}
  it 'most profitable pair of days' do
    expect(arr.stock_picker).to eq([0, 2])
    expect(arr.stock_picker)
  end
  end
