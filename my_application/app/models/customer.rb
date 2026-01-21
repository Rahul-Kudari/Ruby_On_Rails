class Customer < ApplicationRecord

  # Check whether email is present or not
  def check_email
    if email.nil? || email.strip.empty?
      "Email is not present"
    else
      "Email is present"
    end
  end

  # Check whether name contains only alphabetic characters
  def name_check
    if name.nil? || name.strip.empty?
      "Name is empty"
    elsif name.match?(/\A[a-zA-Z]+\z/)
      "Name is valid"
    else
      "Name must contain only alphabets"
    end
  end
    
end
