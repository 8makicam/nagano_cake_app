class Public::HomesController < ApplicationController
  
  before_action :authenticate_customer!, only: [:top, :about]

  def top
  end

  def about
  end
end
