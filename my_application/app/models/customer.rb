class Customer < ApplicationRecord

  #day12
  has_rich_text:about_me  #this gives rich text for the column that we need to add

  # day 9 validation proccess
  
 validates :email, presence: true
 validates :email, uniqueness: true

#day 10  scopes  query

   scope :email_check, -> { where(email: "rahul@gmail.com") }

   scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }



   


  # # Check whether email is present or not

  def check_email
    if email.nil? || email.strip.empty?
     errors.add(:email,"Email is not present")
    end
  end

  # # Check whether name contains only alphabetic characters
  # def name_check
  #   if name.nil? || name.strip.empty?
  #     "Name is empty"
  #   elsif name.match?(/\A[a-zA-Z]+\z/)
  #     "Name is valid"
  #   else
  #     "Name must contain only alphabets"
  #   end
  # end



    
end
