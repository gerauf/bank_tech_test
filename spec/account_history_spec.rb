require 'account_history'

describe AccountHistory do

  let(:date)              {Time.new(2012, 10, 10)}
  let(:transaction)       {double :transaction}
  let(:transaction_klass) {double :transaction_klass, new: transaction}

  subject(:account_history) {described_class.new transaction_klass}

  describe "#show" do
    it 'starts empty' do
      expect(account_history.show).to be_empty
    end
  end

  describe "#add" do
    it 'creates a new transaction with an amount and date' do
      expect(transaction_klass).to receive(:new).with(1000, date)
      account_history.add 1000, date
    end

    it 'transaction is added to history' do
      allow(transaction_klass).to receive(:new)
      expect{account_history.add 1, date}.to change{account_history.show.size}.by 1
    end
  end
end
