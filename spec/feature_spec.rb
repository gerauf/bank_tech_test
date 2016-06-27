require 'bank'
require 'account'
require 'transaction'
require 'statement'

describe "interacting with bank" do
  it 'is expected to show a statement of all interactions' do
    bank = Bank.new
    bank.deposit 1000
    bank.deposit 2000
    bank.withdraw 500

  end
end
