require 'bank'

describe Bank do

  let(:account) {double :account, show_balance: 0}
  let(:statement) {double :statement}
  subject(:bank) {Bank.new account, statement}

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

  describe '#get_statement' do
    it 'produces a statement' do
      expect(statement).to receive(:show).with(account)
      bank.get_statement
    end
  end
end
