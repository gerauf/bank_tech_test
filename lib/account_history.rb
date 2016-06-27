class AccountHistory

  def initialize transaction = Transaction
    @transaction = transaction
    @log = []
  end

  def show
    @log
  end

  def add amount, date = Time.new
    balance = @log.empty? ? 0 : @log.last.current_balance
    # code smell...
    @log << @transaction.new(amount, balance + amount, date)
  end

end
