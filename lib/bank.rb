class Bank

  # banks responsibility is to be an interface for customers

  def initialize(account = Account.new)
    @account = account
  end

  def show_balance
    @account.show_balance
  end

  def deposit amount
    @account.update_balance(amount)
  end

  def withdraw amount
    @account.update_balance(-amount)
  end

end
