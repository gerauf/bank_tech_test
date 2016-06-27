require 'statement'

describe Statement do

  let(:t1)            {double :transaction1, amount: 1000, date: Time.new(2012, 01, 10), balance: 1000}
  let(:t2)            {double :transaction2, amount: 2000, date: Time.new(2012, 01, 13), balance: 3000}
  let(:t3)            {double :transaction3, amount: -500, date: Time.new(2012, 01, 14), balance: 2500}
  let(:account)       {double :account, history: [t1, t2, t3]}
  subject(:statement) {Statement.new}

  describe '#show' do
    it 'shows a formated statement of a given account' do
      formated_statement = "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00"
      expect(statement.show account).to eq formated_statement
    end
  end
end
