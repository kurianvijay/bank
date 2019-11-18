# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new('name') }
  let(:balance) { account.balance }

  describe 'balance' do
    it 'allows a user to view balance in their account' do
      expect(account.balance).to eq 0
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
