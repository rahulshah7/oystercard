# frozen_string_literal: true

class Oystercard
  attr_reader :balance
  def initialize(balance: 0)
    @balance = balance
  end
end
