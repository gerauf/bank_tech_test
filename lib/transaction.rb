class Transaction

  attr_reader :amount, :current_balance, :date

  def initialize amount, current_balance, date
    @amount = amount
    @current_balance = current_balance
    @date = date
  end

end
