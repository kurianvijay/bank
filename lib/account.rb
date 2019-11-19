# frozen_string_literal: true
require_relative './statement'

class Account

  attr_reader :balance, :transactions

  def initialize(transactions = Statement.new)
    @balance = 0
    @transactions = transactions
  end

  def deposit(amount)
    return false if amount <= 0
    @balance += amount
    transactions.transaction_list << { date: date_formatter, amount: amount_formatter(amount), balance: @balance }
    @balance
  end

  def withdraw(amount)
    return false if amount <= 0
    if amount > @balance
      raise "Cannot withraw more than avaliable balance #{@balance}"
      end

    @balance -= amount
    transactions.transaction_list << { date: date_formatter, amount: amount_formatter(amount), balance: @balance }
    @balance
  end

  private

  def date_formatter
    Time.now.strftime('%d/%m/%Y')
  end

  def amount_formatter(a)
    '%.2f' % a
  end
end
