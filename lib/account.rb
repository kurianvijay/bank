# frozen_string_literal: true

require_relative './display'

class Account
  attr_reader :balance, :transaction_list

  def initialize(display = Display.new)
    @display = display
    @balance = 0
    @transaction_list = []
  end

  def deposit(amount)
    return false if amount <= 0

    @balance += amount
    store_transaction_list(amount)
    @balance
  end

  def withdraw(amount)
    return false if amount <= 0
    if amount > @balance
      raise "Cannot withraw more than avaliable balance #{@balance}"
      end

    @balance -= amount
    store_transaction_list(amount)
    @balance
  end

  def store_transaction_list(amount)
    @transaction_list.push(
      date: Time.now.strftime('%d/%m/%Y'),
      amount: '%.2f' % amount,
      balance: @balance
    )
  end

  def print_transaction(transactions = @transaction_list)
    @display.print(transactions)
  end
end
