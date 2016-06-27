class Account

  def initialize transaction_klass = Transaction
    @balance = 0
    @history = []
    @transaction_factory = transaction_klass
  end

  def get_history
    @history
  end

  def new_transaction amount, time = Time.new
    @balance += amount
    @history << @transaction_factory.new(amount, @balance, time)
  end

end
