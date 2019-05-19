

class CashRegister
  attr_accessor :total
  def initialize
    @total = 0
  end
  def discount
    @total / 20
  end
end
