require './lib/bank.rb'

describe Bank do

  subject(:bank) {Bank.new}

  describe '#currentBalance' do
    it 'starts at 0' do
      expect(bank.currentBalance).to eq 0
    end
  end

  describe '#deposit' do
    it 'increases the customers balance' do
      bank.deposit(1000)
      expect(bank.currentBalance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'reduces the customers balance' do
      bank.withdraw(500)
      expect(bank.currentBalance).to eq -500
    end
  end




end
