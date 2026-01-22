# day 9

# validation on forms

# validates
 -- this is used to apply validation before storing data in the database , and ruby provides built-in validators 

example : validates : email, presence: true
          validates :email, uniqueness: true

# validate
  --this is also used to apply validation before storing data in the database , but used when we need custom logic 
  example  : validate :check_is_active

def check_is_active
  if is_active!=true
  errors.add(:i price ,"the products should be  active then only u can add the price ");
  end
end

# Day 9 Work

  1. using regex check the name alpha-numeric  ---> name
  2. if the product is marked as active then only should able to add price --> price 
  3. if the product is marked as active then only should able to add stock --> stock
  4. To not allow special characters --> description
  5. for status, use inbuilt validations to check. accept only if it is checked (acceptence: true)
  6. use profinity:true on name


