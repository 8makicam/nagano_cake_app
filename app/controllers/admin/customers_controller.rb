class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    customer = @customer
    if customer.update(customer_params)
      flash[:notice] = "Customer was successfully updated."
    redirect_to admin_customer_path
    else
    render :edit
    end
  end
  
  private 
end
