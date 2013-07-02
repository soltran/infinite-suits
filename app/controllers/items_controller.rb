class ItemsController < ApplicationController
  
  def index
    
  end
  
  def new
    @categories = Category.all
    
  end
  
  def edit
    
  end
  
end
