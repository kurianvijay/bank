# frozen_string_literal: true

require 'display'

describe Display do
  subject(:statement) { described_class.new }
  let(:account) { double 'account' }
  # let(:date_1) { double 'Time.now', strftime: '10/01/2012'}
  # let(:date_2) { double 'Time.now', strftime: '11/01/2012'}
  # let(:date_3) { double 'Time.now', strftime: '12/01/2012'}

  # describe '#new' do
  #   it 'initializes with an empty transactions array' do
  #     expect
  #     # expect(statement.transactions).to eq []
  #
  #   end
  # end

  # describe '#print' do
  #   it 'prints out the transactions as date || amount_transacted || balance' do
  #     account.deposit(5)
  #     # account.withdraw(1)
  #     single_transaction = statement.transactions
  #     expect(statement.print(single_transaction)).to eq ("19/11/2019" || "10.00" || 10)
  #   end
  # end
end
