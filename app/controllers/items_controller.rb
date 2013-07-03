class ItemsController < ApplicationController
  
  def index
    
    render :json
    
  end
  
  def new
    @categories = Category.all
    @item = current_user.items.build
    @photo = @item.photos.build
    
  end
  
  def edit
    
  end
  
end
