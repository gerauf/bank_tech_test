require './lib/account.rb'

describe Account do

  subject(:account) {Account.new}

  describe '#show_history' do
    it 'starts with no history' do
      expect(account.show_history).to be_empty
    end

    it 'transactions get stored in the history' do
      transaction = {amount: 100, balance: 100}
      account.update_balance transaction[:amount]
      expect(account.show_history.first).to eq transaction
    end
  end

  describe '#show_balance' do
    it 'starts at 0' do
      expect(account.show_balance).to eq 0
    end
  end

  describe '#update_balance' do
    it 'updates the account balance' do
      account.update_balance 100
      expect(account.show_balance).to eq 100
    end
  end




end
