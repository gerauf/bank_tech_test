class Bank

  # banks responsibility is to be an interface for customers

  def initialize(account = Account.new, statement = Statement.new)
    @account = account
    @statement = statement
  end

  def deposit amount, time = Time.new
    @account.new_transaction(amount, time)
  end

  def withdraw amount, time = Time.new
    @account.new_transaction(-amount, time)
  end

  def print_statement
    @statement.show @account
  end

end
