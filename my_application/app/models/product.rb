class Product < ApplicationRecord
    # create the method inside a model  assign a value to the all collecting values from the products and use select and apply condition if the price is greater then  2000 then returns the values to the controller
    # pluck helps us to get the specific column to collect the values from
    #
    def self.items
     Product.all.limit(10).select{|p| p.is_active==true};
    end

     
  
    # @price=Product.all.limit(10).pluck(:price)

    # @stock=Product.all.limit(20).pluck(:stock);
    
   
end
