# frozen_string_literal: true

class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_history << {date: date_formatter, amount: amount_formatter(amount), balance: @balance}
    @balance
  end

  def withdraw(amount)
    if amount > @balance
      raise "Cannot withraw more than avaliable balance #{@balance}"
      end
    @balance -= amount
    @transaction_history << {date: date_formatter, amount: amount_formatter(amount), balance: @balance}
    @balance
  end

private

  def date_formatter
    Time.now.strftime("%d/%m/%Y")
  end

  def amount_formatter(a)
    '%.2f' % a
  end

end

# date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00
