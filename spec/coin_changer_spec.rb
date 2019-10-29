# frozen_string_literal: true

require 'rspec'
require './lib/coin_changer'

describe 'Coin changer logic' do
  before do
    @amount = Changer.new
  end

  it 'returns 1 when given 1' do
    expect(@amount.change(1)).to eq [1]
  end

  it 'returns 2 when given 2' do
    expect(@amount.change(2)).to eq [2]
  end

  it 'returns 5 when given 5' do
    expect(@amount.change(5)).to eq [5]
  end

  it 'returns [2, 2] when given 4' do
    expect(@amount.change(4)).to eq [2, 2]
  end

  it 'returns [200, 100] when given 300' do
    expect(@amount.change(300)).to eq [200, 100]
  end

  it 'returns [50, 20, 20, 5, 2, 2] when given 99' do
    amount = Changer.new
    expect(amount.change(99)).to eq [50, 20, 20, 5, 2, 2]
  end
end
