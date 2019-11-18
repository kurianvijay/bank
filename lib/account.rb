
class Account

attr_reader :balance

  def initialize(name)
    @name = name
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Cannot withraw more than avaliable balance #{@balance}" if amount > @balance
      @balance -= amount
  end


end
