require './lib/bank.rb'

describe Bank do

  let(:account) {double :account, show_balance: 0}
  subject(:bank) {Bank.new account}


  describe '#show_balance' do
    it 'starts at 0' do
      expect(bank.show_balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'increases the customers balance' do
      amount = 1000
      expect(account).to receive(:update_balance).with(amount)
      bank.deposit(amount)
    end
  end

  describe '#withdraw' do
    it 'reduces the customers balance' do
      amount = 1000
      expect(account).to receive(:update_balance).with(-amount)
      bank.withdraw(amount)
    end
  end



end
