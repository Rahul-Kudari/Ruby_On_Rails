class Product < ApplicationRecord
  has_rich_text :feedback
    scope :out_of_stock, -> { where("stock <= ?", 0) }
  # scope :out_of_stock, -> { where(stock: 0)}

  # scope :test_scopes_joins, -> {joins.name_of_table.where}


  # scope :test_scope, -> query{}  #inside the query u can put full sequence query

  # create the method inside a model  assign a value to the all collecting values from the products and use select and apply condition if the price is greater then  2000 then returns the values to the controller
  # pluck helps us to get the specific column to collect the values from
  
    # def self.items
    #  Product.all.limit(10).select{|p| p.is_active==true};
    # end

    # day 6===================================================================================

  # @status = Product.all.limit(10).select { |product| product.stock > 100 }
  # # @price = Product.all.limit(10).pluck(:price)
  # # @stock = Product.all.limit(10).pluck(:stock)
 
  # @status = Product.all.limit(10).pluck(:is_active)

  # @price = Product.all.limit(10).pluck(:price)

  #  @stock = Product.all.limit(10).pluck(:stock) # rubocop:disable Layout/CommentIndentation


# day 8=====================================================================================
  # Check if product is available in stock

  # def check_availability
  #   stock.to_i > 0
  # end

  # # Apply discount using case statement
  # def apply_discount(discount_percent)
  #   case discount_percent
  #   when 0
  #     price
  #   when 1..10
  #     price - (price * 0.10)
  #   when 11..20
  #     price - (price * 0.20)
  #   when 21..30
  #     price - (price * 0.30)
  #   else
  #     price - (price * 0.40)
  #   end
  # end

  # # Calculate total amount after checking availability and discount
  # def total_amount(discount_percent = 0)
  #   unless check_availability
  #     return "Out of stock"
  #   end

  #   discounted_price = apply_discount(discount_percent)
  #   discounted_price * stock
  # end


  #day9 =========================================================================================



# validates :stock, numericality: true
# validates :stock, length: { minimum: 10, maximum: 20 }
# validates :description, length: { maximum: 500 }

# validates :price, numericality: true
# validates :price, length: { minimum: 10, maximum: 20 }
# validates :description, length: { maximum: 500 }






#class teaching

# for validate we canot pass column name
# customize validation
# validates :price, numericality: { greater_than_or_equal_to: 3 }
# validate :check_price

# def check_price
#   # if stock is zero, price cannot be greater than zero
#   if stock == 0 && price < 0
#     errors.add( stock:"Stock is not available, price must be zero")
#   end
# end




# Home work

  # using regex check the name alpha-numeric  ---> name
  # if the product is marked as active then only should able to add price --> price 
  # if the product is marked as active then only should able to add stock --> stock
  # To not allow special characters --> description
  # for status, use inbuilt validations to check. accept only if it is checked (acceptence: true)
  # use profinity:true on name



# #quation one

validate :check_alpha_numeric_or_not

def check_alpha_numeric_or_not
  if name.match?(/[^a-zA-Z0-9 ]/)
    errors.add(:name,"the name should not be contains symbols")
  end
end


#second quations

validate :check_is_active

def check_is_active
  if is_active!=true
  errors.add(:price ,"the products should be  active then only u can add the price ");
  end
end

#third quation 

validate :check_is_active_then_only_add_stock

def check_is_active_then_only_add_stock
  if is_active==false
    errors.add(:stock,"if the is_active is true then only u can add the stocks");
  end
end


#4th quation

validate :check_description

def check_description
  if description.match?(/[^a-zA-Z0-9 ]/)
    errors.add(:description, "the description contains special characters, it allows only letters and numbers")
  end
end


validate :price_zero
def price_zero
  if price==0
    errors.add(:price,"the price should not be zero")
  end
end

#5th quation

validates :is_active, acceptance: true


#6th profanity

end
