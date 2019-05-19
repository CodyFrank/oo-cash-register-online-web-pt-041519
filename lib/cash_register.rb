

class CashRegister
  attr_accessor :total, :discount, :things
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @things = []
  end

  def add_item(thing, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @things << thing
    end
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
end
