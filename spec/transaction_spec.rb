require 'transaction'

describe Transaction do

  subject(:transaction) {described_class.new 100, 100}

  it 'has an amount' do
    expect(transaction.amount).to eq 100
  end

  it 'has a current balance' do
    expect(transaction.current_balance).to eq 100
  end

  it 'has a date' do
    expect(transaction.date).to be_a(Date)
  end

end
