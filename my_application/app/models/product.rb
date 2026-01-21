class Product < ApplicationRecord
    # create the method inside a model  assign a value to the all collecting values from the products and use select and apply condition if the price is greater then  2000 then returns the values to the controller
    # pluck helps us to get the specific column to collect the values from
    #
    def self.items
     Product.all.limit(10).select{|p| p.is_active==true};
    end

     
  
    # # write a method inside the modle assign a value to the all collecting value from the product and use select and apply condition if the priceis greater then or select  we 
  # # 
  # def self.fetch_active_products
  # @status = Product.all.limit(10).select { |product| product.stock > 100 }
  # # @price = Product.all.limit(10).pluck(:price)
  # # @stock = Product.all.limit(10).pluck(:stock)
  # end
  def availablity_check
    #check the stock value more then zero

    
  end
  def apply_discount(discount_percent)
    #use case statement and calculate discount .
  end

  def total_amount 
    # call the apply_discount and check_availability
    # if available apply discount. appply any Math methods and apply
    # return the total value
  end
    # @price=Product.all.limit(10).pluck(:price)

    # @stock=Product.all.limit(20).pluck(:stock);
    
   
end
