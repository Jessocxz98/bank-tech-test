class Account

  def initialize
    @balance = 0
    @statement = []
  end

  def balance
    balance = @balance
  end

  def deposit(money)
    @balance += money
    @statement << ["#{date}", "+#{money}", "#{@balance}"]
  end

  def withdraw(money)
    @balance -= money
    @statement << ["#{date}", "-#{money}", "#{balance}"]
  end

  def statement
    statement = @statement
  end

  def date
    time = Time.new
    "#{time.day}/#{time.month}/#{time.year}"
  end

end