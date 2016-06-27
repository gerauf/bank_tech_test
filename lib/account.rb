class Account

  def initialize
    @balance = 0
  end

  def show_history
    []
  end

  def show_balance
    @balance
  end

  def update_balance amount
    @balance += amount
  end



end
