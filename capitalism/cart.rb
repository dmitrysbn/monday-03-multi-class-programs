require './product.rb'

class Cart

  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def remove_product(product)
    left_products = @products.select do |item|
      product.name != item.name
    end
    @products = left_products
  end

  def products
    @products
  end

  def cost_before_tax
    running_total = 0
    @products.each do |product|
      running_total += product.base_price
    end
    return running_total
  end

  def cost_after_tax
    running_total = 0
    @products.each do |product|
      running_total += product.total_price
    end
    return running_total
  end


end

apple = Product.new('apple', 5, 1.13)
orange = Product.new('orange', 2, 1.13)
# puts apples.total_price

cart = Cart.new
cart.add_product(apple)
cart.add_product(orange)
puts cart.products

puts cart.cost_before_tax
puts cart.cost_after_tax
