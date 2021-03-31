class Admin::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
  end
  
  def create
    @genre = Genre.new(genre_params)
    genre = @genre
    if genre.save
    flash[:notice] = "item was successfully created."
    redirect_to :index
    else
      render :index
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    genre = @genre
    if genre.update(genre_params)
      flash[:notice] = "Genre was successfully updated."
    redirect_to :index
    else
      render :edit
    end
  end
  
  private
  def genre_params
  require(:genre).permit(:name)
  end
  
end

