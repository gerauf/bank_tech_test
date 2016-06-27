class Bank

  # banks responsibility is to be an interface for customers

  def initialize(account = Account.new)
    @account = account
  end

  def deposit amount
    @account.new_transaction(amount)
  end

  def withdraw amount
    @account.new_transaction(-amount)
  end

end
