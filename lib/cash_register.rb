

class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(thing, price, quantity = 1)
    @total += (price * quantity)
    @things = []
    quantity.times do
      @things << thing
    end
  end

  def apply_discount
    if @discount > 0
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
