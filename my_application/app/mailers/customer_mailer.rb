class CustomerMailer < ApplicationMailer
    def welcome_email
      @customer = params[:customer]
        #elobarte whome i am passing two values we should pass
        mail(to:@customer.email,subject:"welcome !! we are happy to connect")
    end
end
