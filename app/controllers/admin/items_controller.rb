class Admin::ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    item = @item
    if item.save
     flash[:notice] = "item was successfully created."
    redirect_to admin_item_path(item.id)
    else
      render :new
    end
  end

  def update
    @item = Item.find(params[:id])
    item = @item
    if item.update(item_params)
      flash[:notice] = "Profile was successfully updated."
    redirect_to admin_item_path(item.id)
    else
      render :edit
    end
  end

  private
  def item_params
    params.require(:genre).permit(:name, :introduction, :price, :genre_id, :is_active, :image)
  end

end


