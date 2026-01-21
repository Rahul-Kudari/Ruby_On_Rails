class Product < ApplicationRecord
    # create the method inside a model  assign a value to the all collecting values from the products and use select and apply condition if the price is greater then  2000 then returns the values to the controller
    # pluck helps us to get the specific column to collect the values from
  
    def self.items
     Product.all.limit(10).select{|p| p.is_active==true};
    end

  # @status = Product.all.limit(10).select { |product| product.stock > 100 }
  # # @price = Product.all.limit(10).pluck(:price)
  # # @stock = Product.all.limit(10).pluck(:stock)
  # end
  class Product < ApplicationRecord
# @status = Product.all.limit(10).pluck(:is_active)

# @price = Product.all.limit(10).pluck(:price)

# @stock = Product.all.limit(10).pluck(:stock) # rubocop:disable Layout/CommentIndentation

  # Check if product is available in stock
  def check_availability
    stock.to_i > 0
  end

  # Apply discount using case statement
  def apply_discount(discount_percent)
    case discount_percent
    when 0
      price
    when 1..10
      price - (price * 0.10)
    when 11..20
      price - (price * 0.20)
    when 21..30
      price - (price * 0.30)
    else
      price - (price * 0.40)
    end
  end

  # Calculate total amount after checking availability and discount
  def total_amount(discount_percent = 0)
    unless check_availability
      return "Out of stock"
    end

    discounted_price = apply_discount(discount_percent)
    discounted_price * stock
  end
end
end
