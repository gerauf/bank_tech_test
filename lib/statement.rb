class Statement

  def show account
    account.history.reverse.reduce(header) do |statement, transaction|
      statement += "\n#{make_line transaction}"
    end
  end


  private

  def header
    "date || credit || debit || balance"
  end

  def make_line transaction
    date = date_format transaction.date
    amount = credit_or_debit transaction.amount
    balance = money_format transaction.balance
    "#{date} || #{amount} || #{balance}"
  end

  def credit_or_debit amount
    amount > 0 ? "#{money_format amount} ||" : "|| #{money_format amount.abs()}"
  end

  def money_format amount
    format("%.2f", amount)
  end

  def date_format date
    date.strftime "%d/%m/%Y"
  end

end
