#!/usr/bin/env ruby

# Register class to run sales transaction
class CashRegister

  def initialize
    @subtotal = 0.00
  end

  def total
    puts "register.total $#{@subtotal.round(2)}"
  end

  def purchase (purchase_amount)
    @purchase = purchase_amount
    @purchase = @purchase.to_f
    puts "register.purchase: #{@purchase}"
    @subtotal = @subtotal + @purchase
  end

  def pay (amount_tendered)
    @new_subtotal = @subtotal
    while true
      @amount_tender = amount_tendered
      if @amount_tender <= @subtotal
        @subtotal = @new_subtotal.to_f - @amount_tender.to_f
        print "register.pay: $#{@amount_tender}"
      end
      # Set new variable last_subtotal to pass to calculate change method
      @last_subtotal = @new_subtotal
      @new_subtotal = @new_subtotal.to_f - @amount_tender.to_f
      if @new_subtotal >= 0.00
        puts "  Your new total is $#{@new_subtotal.round(2)}"
      else
        @subtotal = 0.00
        break
      end
    end
  end


  def calculate_change
    change_due = @amount_tender.to_f - @last_subtotal.to_f
    puts "register.pay: $#{@amount_tender}  Your change is: $#{change_due.round(2)}"
    puts 'Thank you and have a nice day!'
  end

end


def start_transaction_1
  puts
  puts "TRANSACTION 1 BELOW"
  puts
  register = CashRegister.new
  register.total
  register.purchase (3.78)
  register.total
  register.pay (5.00)
  register.calculate_change
end

def start_transaction_2
  # TRANSACTION 2
  puts
  puts
  puts "TRANSACTION 2 BELOW"
  puts
  register = CashRegister.new
  register.total # => 0.00
  register.purchase (3.78) # => 3.78
  register.purchase(5.22) # => 9.00
  register.total # => 9.00
  register.pay (5.00) # => "Your new total is $4.00"
  register.pay(5.00) # => "Your change is $1.00"
  register.calculate_change
  register.total

end

start_transaction_1
start_transaction_2

# TRANSACTION 1
# puts Regiser
# register = CashRegister.new
# register.total  # => 0.00
# register.purchase(3.78)  # => 3.78
# register.total  # => 3.78
# register.pay(5.00)  # => "Your change is $1.22"
# register.total # => 0.00

