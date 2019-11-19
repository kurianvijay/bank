# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:balance) { account.balance }

  describe '#new' do
    it 'allows a user to view balance in their account' do
      expect(account.balance).to eq 0
      expect(account.transaction_history).to eq []
    end
  end

  describe '#deposit' do
    it 'allows a user to deposit money in their account' do
      expect(account.deposit(5)).to eq(5)
    end
  end

  describe '#withdraw' do
    it 'allows a user to withdraw money in their account' do
      account.deposit(5)
      expect(account.withdraw(4)).to eq(1)
    end

    it 'does not allow user to withdraw more money than in the account' do
      account.deposit(10)
      expect { account.withdraw(11) }.to raise_error("Cannot withraw more than avaliable balance #{balance}")
    end
  end

end

# date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00
