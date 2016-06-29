class Statement


  def show(account)
    balance = 0
    account.get_history.map {|line| presenter(line, balance += line.amount) }
      .reverse.reduce(HEADER){|statement,line| statement + "\n#{line}"}
  end


  private
  HEADER = "date || credit || debit || balance"

  def presenter(transaction, balance)
    date = date_format transaction.date
    amount = credit_or_debit transaction.amount
    "#{date} || #{amount} || #{money_format balance}"
  end


  def credit_or_debit(amount)
    amount > 0 ? "#{money_format amount} ||" : "|| #{money_format amount.abs()}"
  end

  def money_format(amount)
    format("%.2f", amount)
  end

  def date_format(date)
    date.strftime "%d/%m/%Y"
  end

end
