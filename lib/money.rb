class Money

  def initialize
    @balance = 0
  end

  def balance
    balance = @balance
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

end