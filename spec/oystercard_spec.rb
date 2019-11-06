# frozen_string_literal: true

require 'oystercard'

describe Oystercard do
  it { is_expected.to be_instance_of(described_class) }

  describe '#balance' do
    it { is_expected.to respond_to(:balance) }

    context 'when initialized without a balance' do
      subject(:card_with_zero) { described_class.new }
      it 'returns a balance of zero' do
        expect(card_with_zero.balance).to eq 0
      end
    end

    context 'when initialized with a balance of 50' do
      subject(:card_with_hundred) { described_class.new(balance: 50) }
      it 'returns a balance of 50' do
        expect(card_with_hundred.balance).to eq 50
      end
    end
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'should increase card balance by 10' do
      expect { subject.top_up(10) }.to change { subject.balance }.by(10)
    end
  end
end
