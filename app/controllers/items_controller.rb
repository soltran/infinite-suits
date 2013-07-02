class ItemsController < ApplicationController
  
  def index
    
  end
  
  def new
    @categories = Category.all
    # @item = current_user.items.build
    
  end
  
  def edit
    
  end
  
end
