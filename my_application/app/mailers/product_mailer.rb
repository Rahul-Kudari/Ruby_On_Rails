class ProductMailer < ApplicationMailer
    def welcome
      
      @product = params[:product]
        #elobarte whome i am passing two values we should pass
        mail(to:@product.email,subject: "welcome !! we are happy to connect")
    end
end
