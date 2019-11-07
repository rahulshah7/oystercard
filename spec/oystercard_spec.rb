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

    context 'when the maximum card balance limit would be exceeded' do
      max_balance_limit = Oystercard::MAX_BALANCE_LIMIT
      it "should raise an error: Invalid amount, maximum balance limit is #{max_balance_limit}" do
        subject.top_up(max_balance_limit)
        expect { subject.top_up(1) }.to raise_error("Invalid amount, maximum balance limit is #{max_balance_limit}")
      end
    end
  end

  describe '#deduct' do
    it { is_expected.to respond_to(:deduct).with(1).argument }
    it 'should reduce card balance by 10' do
      expect { subject.deduct(10) }.to change { subject.balance }.by(-10)
    end
  end

  describe '#in_journey?' do
    it { is_expected.to respond_to(:in_journey?) }
    context 'when a new instance is created' do
      it { is_expected.not_to be_in_journey }
    end
  end

  describe '#touch_in' do
    it { is_expected.to respond_to(:touch_in) }
    it 'should begin a journey' do
      subject.touch_in
      is_expected.to be_in_journey
    end
  end

  describe '#touch_out' do
    it { is_expected.to respond_to(:touch_out) }
    it 'should end a journey' do
      subject.touch_in
      subject.touch_out
      is_expected.not_to be_in_journey
    end
  end
end
