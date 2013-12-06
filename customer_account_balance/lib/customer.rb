class Customer
  @@account_no = 0

  def initialize(name)
    @name = name
    @@account_no += 1
    @account_no = @@account_no
    @balance = 1000
  end

  def deposit(amount)
    if amount.to_f <= 0
      print_error_message('amount=0/nil')
    else
      @balance += amount
      print_transaction_message('deposited', amount)
    end
    @balance
  end

  def withdraw(amount)
    if amount.to_f <= 0
      print_error_message('amount=0/nil')
    elsif @balance >= amount
      @balance -= amount
      print_transaction_message('withdrawn', amount)
    else
      print_error_message('insufficient')
    end
    @balance
  end

  def print_transaction_message(action, amount)
    puts "amount #{ action } by #{ @name } with account no. #{ @account_no } is #{ amount }, balance = #{ @balance }"
  end

  def print_error_message(action)
    case action
    when 'insufficient'
      puts "#{ action } balance in the account"
    when 'amount=0/nil'
      puts 'Enter a valid amount'
    end
  end
end