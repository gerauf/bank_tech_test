require './lib/bank.rb'

describe Bank do

  let(:account) {double :account, show_balance: 0}
  subject(:bank) {Bank.new account}

  describe '#deposit' do
    it 'makes a positive transaction' do
      amount = 1000
      expect(account).to receive(:new_transaction).with(amount)
      bank.deposit(amount)
    end
  end

  describe '#withdraw' do
    it 'makes a negative transaction' do
      amount = 1000
      expect(account).to receive(:new_transaction).with(-amount)
      bank.withdraw(amount)
    end
  end
end
