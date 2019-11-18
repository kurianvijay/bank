# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize(name)
    @name = name
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount > @balance
      raise "Cannot withraw more than avaliable balance #{@balance}"
      end

    @balance -= amount
  end
end
