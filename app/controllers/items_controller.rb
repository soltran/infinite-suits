class ItemsController < ApplicationController
  
  def index
    
  end
  
  def new
    @categories = Category.all
    @item = current_user.items.build
    3.times { @item.photos.build }
    
  end
  
  def create
    @categories = Category.all
    @item = current_user.items.build(params[:item])
    if @item.save
      redirect_to root_url
    else
      render :new
    end
  end
  
  def edit
    
  end
  
end
