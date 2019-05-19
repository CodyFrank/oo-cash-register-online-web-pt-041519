

class CashRegister
  attr_accessor :total, :discount, :things, :transaction
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @things = []
    @transaction = []
  end

  def add_item(thing, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @things << thing
    end
    @transaction << price
  end

  def apply_discount
    if @discount != nil
      deduct_percent = @discount/100.to_f
      @total = @total - @total * deduct_percent
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @things
  end

  def void_last_transaction
    refund = @transaction.pop
    @things.pop
    @total -= refund
  end
end
