class AccountHistory

  def initialize transaction = Transaction
    @transaction = transaction
    @log = []
  end

  def show
    @log
  end

  def add amount, date = Time.new
    @log << @transaction.new(amount, date)
  end

end
