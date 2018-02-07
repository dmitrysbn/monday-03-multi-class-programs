require './product.rb'

class Cart

  def initialize
    @products = []
  end

  def add_product(product)
    # product.number += 1
    @products << product
  end

  def how_many(product)
    # go through list @products of products and count how many matches
    running_total = 0
    @products.each do |item|
      if item.name == product.name
        running_total += 1
      end
    end
    return running_total
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

  def most_expensive_product
    product_numbers = @products.map do |product|
      product.total_price
    end
    most_expensive_price = product_numbers.max
    most_expensive_index = product_numbers.find_index(most_expensive_price)
    return @products[most_expensive_index]
  end

end

apple = Product.new('apple', 5, 'tax exempt')
orange = Product.new('orange', 2, 'standard')
blueberry = Product.new('blueberry', 20, 'standard')
lol = Product.new('lol', 14, 'imported')

# puts apples.total_price

cart = Cart.new
cart.add_product(apple)
cart.add_product(apple)
cart.add_product(orange)
cart.add_product(blueberry)
cart.add_product(lol)
puts cart.products
puts cart.most_expensive_product.inspect

puts cart.how_many(apple)

# puts cart.cost_before_tax
# puts cart.cost_after_tax
