

class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(thing, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    @total / 5
  end
end
