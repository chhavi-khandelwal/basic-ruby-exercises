class Customer
  attr_reader :name
  attr_accessor :account_no
  attr_accessor :balance

  @@account_no = 0

  def initialize(name)
    @name = name
    @@account_no += 1
    @balance = 1000
  end

  def deposit(amount)
    @balance += amount
    puts "amount deposited by #{ @name } with account no. #{ @@account_no } is #{ amount }, balance = #{ @balance }"
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
      puts "amount withdrawn by #{ @name } with account no. #{ @@account_no } is #{ amount }, balance = #{ @balance }"
    else
      puts "insufficient balance in account no. #{ @@account_no }"
    end  
  end
end 