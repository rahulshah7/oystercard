# frozen_string_literal: true

require 'oystercard'

describe Oystercard do
  it { is_expected.to be_instance_of(described_class) }

  describe '#balance' do
    it { is_expected.to respond_to(:balance) }

    subject(:card_with_zero) { described_class.new }
    it 'returns a balance of zero' do
      expect(card_with_zero.balance).to eq 0
    end

    subject(:card_with_hundred) { described_class.new(balance: 100) }
    it 'returns a balance of 100' do
      expect(card_with_hundred.balance).to eq 100
    end
  end
end
