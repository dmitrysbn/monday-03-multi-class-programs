class Product

  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate
  end

  def name
    @name
  end

  def base_price
    @base_price
  end

  def total_price
    total_price = @base_price * @tax_rate
  end
end
