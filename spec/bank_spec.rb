require 'bank'

describe Bank do

  let(:account) {double :account, show_balance: 0}
  let(:statement) {double :statement}
  subject(:bank) {Bank.new account, statement}

  describe '#deposit' do
    it 'makes a positive transaction' do
      amount = 1000
      date = Time.new(2012, 01, 10)
      expect(account).to receive(:new_transaction).with(amount, date)
      bank.deposit(amount, date)
    end
  end

  describe '#withdraw' do
    it 'makes a negative transaction at a given date' do
      amount = 1000
      date = Time.new(2012, 01, 10)
      expect(account).to receive(:new_transaction).with(-amount, date)
      bank.withdraw(amount, date)
    end
  end

  describe '#get_statement' do
    it 'produces a statement' do
      expect(statement).to receive(:show).with(account)
      bank.get_statement
    end
  end
end
