require 'bank'
require 'account'
require 'transaction'
require 'statement'

describe "interacting with bank" do
  it 'is expected to show a statement of all interactions' do
    formated_statement = "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00"
    bank = Bank.new
    bank.deposit 1000, Time.new(2012, 01, 10)
    bank.deposit 2000, Time.new(2012, 01, 13)
    bank.withdraw 500, Time.new(2012, 01, 14)
    expect(bank.get_statement).to eq formated_statement
  end
end
