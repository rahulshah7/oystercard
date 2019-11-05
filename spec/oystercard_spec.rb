# frozen_string_literal: true

require 'oystercard'

describe Oystercard do
  it { is_expected.to be_instance_of(described_class) }

  describe '#balance' do
    it { is_expected.to respond_to(:balance) }
  end
end
