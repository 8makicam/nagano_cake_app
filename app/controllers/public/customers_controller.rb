class Public::CustomersController < ApplicationController
  
  def show
    @customers = Customer.all
  end

  def edit
  end
  
end


