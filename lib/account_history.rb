class AccountHistory

  def initialize transaction_klass = Transaction
    @transaction_factory = transaction_klass
    @log = []
  end

  def show
    @log
  end

  def add amount, date = Time.new
    balance = @log.empty? ? 0 : @log.last.current_balance
    @log << @transaction_factory.new(amount, balance + amount, date)
  end

end
