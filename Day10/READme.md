# day 10

# scopes 
 # What is a Scope?
A scope is a reusable query defined in the model
Scopes return ActiveRecord::Relation
Supports method chaining
Each scope returns records

example : syntax : scope :scope_name, -> { condition }
        :=> scope :out_of_stock, -> { where("stock <= ?", 0) }
        :=> scope :email_check, -> { where(email: "rahul@gmail.com") }
# scopes with parameter
        :=> scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }


# Model Attributes
Column names in the database table
Automatically available in the model
Called model attributes
  Examples : product.name
             product.price
             product.stock

# How to create new Path using route

  in router.rb remove resources : products and add below one
  |
resources :products do
    collection do
      get 'out_of_stock'
    end
  end
  |
  create same name (out_of_stock) method in controller and return the recodrs  @products=Product.out_of_stock
  |
  create html.erb file with the same name as in the scope => out_of_scope that is in the model page (scope :out_of_stock, -> { where("stock <= ?", 0) })
  |
  write a code in html.erb file thet helps us to iterate
  |
  run it with this path
  http://localhost:3000/products/out_of_stock
