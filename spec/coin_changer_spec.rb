require 'rspec'
require './lib/coin_changer'

describe 'Coin changer logic' do

  it 'can make a new object' do
    amount = Changer.new
  end

  it 'returns 1 when given 1' do
    amount = Changer.new
    expect(amount.change(1)).to eq [1]
  end

  it 'returns 2 when given 2' do
    amount = Changer.new
    expect(amount.change(2)).to eq [2]
  end

end
