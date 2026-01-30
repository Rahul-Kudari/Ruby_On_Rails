class CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show edit update destroy ]

  # def blacklisted_customers
  #   @list_of_customers = [1,2,3]
  #   @customers = Customer.blacklisted_customers(@list_of_customers)
  # end

  # GET /customers or /customers.json
  def index

    #day12
    # raise params.inspect
    #day 10 scopes query
    
    # list_of_customers=[1,2,3,4]
    # @customers =Customer.blacklisted_customers(list_of_customers) #Customer.all

    @customers=Customer.all
  end

  

  

  # GET /customers/1 or /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit

  end

  # POST /customers or /customers.json
  def create
    @customer = Customer.new(customer_params)
 
    respond_to do |format|
      if @customer.save   # generally triggering mail is after save it instance only in tabel else it will bad response for customer 
        CustomerMailer.with(customer:@customer).welcome_email.deliver
        

        format.html { redirect_to @customer, notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    # raise params.inspect
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "Customer was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy
    @customer.destroy!

    respond_to do |format|
      format.html { redirect_to customers_path, notice: "Customer was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.expect(customer: [ :name, :email, :about_me, :profile_photo ]) #day12
      #params.inspect, .permit then values wihtch are we wanted
    end
end
