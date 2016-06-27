require 'account'

describe Account do

  let(:date) {Time.new(2012, 01, 10)}
  let(:account_history) {double :account_history}
  subject(:account) {Account.new account_history}

  describe '#get_history' do
    it 'calls the account history show method' do
      expect(account_history).to receive(:show)
      account.get_history
    end
  end

  describe '#new_transaction' do
    it 'calls the account history add method with amount and time' do
      expect(account_history).to receive(:add).with(100, date)
      account.new_transaction 100, date
    end
  end
end
