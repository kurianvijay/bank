# frozen_string_literal: true

require_relative './account'
class Display
  attr_reader :transaction_list

  # def initialize
  #   @transaction_list = []
  # end

  # def print_statement(transactions = @transactions)
  #   transactions.reverse.each do |single_trans|
  #     p single_trans[0]
  #   end

  private

  def date_formatter
    Time.now.strftime('%d/%m/%Y')
  end

  def amount_formatter(a)
    '%.2f' % a
  end

  def header
    puts 'date || credit || debit || balance'
  end
end
