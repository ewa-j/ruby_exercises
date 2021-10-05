class Balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    if @balance - money < 0
      return "You do not have enough available balance to withdraw £#{money}."
    else
      @balance -= money
    end
  end

  def show_balance
    @balance
  end

end