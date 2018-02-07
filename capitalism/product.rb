class Product

  @@standard = 1.13
  @@tax_exempt = 1.00
  @@imported = 1.20
  @@number = 1

  def self.number
    @@number
  end

  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    if tax_rate == 'standard'
      @tax_rate = @@standard

    elsif tax_rate == 'tax exempt'
      @tax_rate = @@tax_exempt

    else
      @tax_rate = @@imported
    end
  end

  def name
    @name
  end

  def base_price
    @base_price
  end

  def total_price
    @base_price * @tax_rate
  end
end
