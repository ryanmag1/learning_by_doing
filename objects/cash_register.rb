#!/usr/bin/env ruby

# Register class to run sales transaction
class CashRegister

  def initialize
    @subtotal = 0.00
  end

  def total
    puts "Current Total is #{@subtotal}"
  end

  def purchase
    puts
    print 'Grocery: ENTER PRICE: '
    while true
      @purchase = gets.chomp
      break if @purchase.to_s == 'P'
      @purchase = @purchase.to_f
      puts "New Purchase is $#{@purchase}"
      @subtotal = @subtotal + @purchase
      puts
      print "SUBTOTAL: $#{@subtotal}"
      puts
      print 'ENTER NEW PRICE or P to pay: '
    end
  end

  def pay
    puts
    @new_subtotal = @subtotal
    while true
      puts
      print "Amount due: #{@new_subtotal} ENTER PAYMENT AMOUNT: $"
      @amount_tender = gets.chomp
      print "You entered $#{@amount_tender}"
      # Set new variable last_subtotal to pass to calculate change method
      @last_subtotal = @new_subtotal
      @new_subtotal = @new_subtotal.to_f - @amount_tender.to_f
      if @new_subtotal <= 0.00
        break
      end
    end
  end

  def calculate_change
    change_due = @amount_tender.to_f - @last_subtotal.to_f
    puts
    puts
    puts "Your change is: $#{change_due}"
    puts
    puts 'Thank you and have a nice day!'
  end
end

def next_transaction
  puts
  while true
    print 'Start another transaction? y/n: '
    start_new_trx = gets.chomp
    if start_new_trx == 'y'
      start_transaction
    elsif start_new_trx == 'n'
      break
    end
  end
end

def start_transaction
  register = CashRegister.new
  register.total
  register.purchase
  register.pay
  register.calculate_change
  next_transaction
end

start_transaction

# Working price entry method:

# puts Regiser
# register = CashRegister.new
# register.total  # => 0.00
# register.purchase(3.78)  # => 3.78
# register.total  # => 3.78
# register.pay(5.00)  # => "Your change is $1.22"
# register.total # => 0.00
