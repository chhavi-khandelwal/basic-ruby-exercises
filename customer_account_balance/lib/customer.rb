class Customer
  @@auto_incremented_id = 0

  def initialize(name)
    @name = name
    @@auto_incremented_id += 1
    @account_no = @@auto_incremented_id
    @balance = 1000
  end

  def deposit(amount)
    case
     when amount == 0
      print_transaction_message('amount=0', amount)
    else
      @balance += amount
      print_transaction_message('deposited', amount)
     end
    @balance
  end

  def withdraw(amount)
    case
    when amount == 0
      print_transaction_message('amount=0', amount)
    when @balance >= amount
      @balance -= amount
      print_transaction_message('withdrawn', amount)
    else
      print_transaction_message('insufficient', amount)
    end
    @balance
  end

  def print_transaction_message(action, amount)
    case action
    when 'insufficient'
      puts "#{ action } balance in account no. #{ @account_no }"
    when 'amount=0'
      puts "amount should be greater than #{ amount }"
    else
      puts "amount #{ action } by #{ @name } with account no. #{ @account_no } is #{ amount }, balance = #{ @balance }"
    end
  end
end