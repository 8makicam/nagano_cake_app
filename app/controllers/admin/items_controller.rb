class Admin::ItemsController < ApplicationController
  
  def index
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end
  
  def create
    Item.create(item_params)
    redirect_to "/index"
  end
  
  def update
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :genre_id, :is_active, :image)
  end
  
end


