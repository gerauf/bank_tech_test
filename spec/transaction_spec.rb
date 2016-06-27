require 'transaction'

describe Transaction do

  let(:date)              {Time.new(2012, 10, 10)}
  subject(:transaction)   {described_class.new 100, 100, date}

  it 'has an amount' do
    expect(transaction.amount).to eq 100
  end

  it 'has a current balance' do
    expect(transaction.current_balance).to eq 100
  end

  it 'saves the creation time' do
    expect(transaction.date).to eq date
  end

end
