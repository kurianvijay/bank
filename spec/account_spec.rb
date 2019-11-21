# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:balance) { account.balance }

  describe '#new' do
    it 'allows a user to view balance in their account' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'returns false if the amount of deposit is 0' do
      expect(account.deposit(0)).to be false
    end
    it 'allows a user to deposit money in their account' do
      expect { account.deposit(5) }.to change { account.balance }.by(+5)
    end
  end

  describe '#withdraw' do
    it 'returns false if the amount of withdrawl is 0' do
      expect(account.withdraw(0)).to be false
    end
    it 'allows a user to withdraw money in their account' do
      account.deposit(5)
      expect { account.withdraw(4) }.to change { account.balance }.by(-4)
    end

    it 'does not allow user to withdraw more money than in the account' do
      account.deposit(10)
      expect { account.withdraw(11) }.to raise_error("Cannot withraw more than avaliable balance #{balance}")
    end
  end

  describe '#print_transaction' do
    it 'prints out a list of transactions' do
      account.deposit(10)
      account.withdraw(5)
      account.withraw(1)
      transaction_list = [
        {date: 20/11/2019, }
      ]

    end
  end

  describe '#store_transaction_list' do
    it 'stores transactions into the transaction_list array in a set format' do
      expect { account.store_transaction_list(10) }.to change { account.transaction_list.count }.by(1)
    end
  end
end
