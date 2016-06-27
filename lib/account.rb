class Account

  def initialize account_history = AccountHistory.new
    @history = account_history
  end

  def get_history
    @history.show
  end

  def new_transaction amount, date
    @history.add amount, date
  end

end
