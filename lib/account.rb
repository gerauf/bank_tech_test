class Account

  def initialize
    @balance = 0
    @history = []
  end

  def show_history
    @history
  end

  def show_balance
    @balance
  end

  def update_balance amount
    @history << {amount: amount, balance: @balance += amount}
  end



end
