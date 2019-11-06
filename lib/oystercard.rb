# frozen_string_literal: true

class Oystercard
  MAX_BALANCE_LIMIT = 90

  attr_reader :balance

  def initialize(balance: 0)
    @balance = balance
  end

  def top_up(amount)
    if balance + amount > MAX_BALANCE_LIMIT
      raise "Invalid amount, maximum balance limit is #{MAX_BALANCE_LIMIT}"
    end

    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end
end
