require 'account'

describe Account do

  let(:transaction) {double :transaction, amount: 1, current_balance: 1}
  let(:transaction_klass) {double :transaction_klass, new: transaction}
  subject(:account) {Account.new transaction_klass}

  describe '#get_history' do
    it 'starts with no history' do
      expect(account.get_history).to be_empty
    end
  end

  describe '#new_transaction' do
    it 'creates a new transaction' do
      expect(transaction_klass).to receive(:new).with(100, 100)
      account.new_transaction 100
    end

    it 'each transaction gets stored in the history' do
      allow(transaction_klass).to receive(:new)
      expect{account.new_transaction 1}.to change{account.get_history.size}.by 1
    end

    it 'balance is updated from previous transactions balance' do
      account.new_transaction 1
      expect(transaction_klass).to receive(:new).with(1, 2)
      account.new_transaction 1
    end
  end




end
