class Transaction

  attr_reader :amount, :current_balance, :date

  def initialize amount, current_balance, date = Date.new
    @amount = amount
    @current_balance = current_balance
    @date = date
  end

end