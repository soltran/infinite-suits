class ItemsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @items = Item.all
    @photo = Photo.new
    
    render :json => @items
    
    # .as_json(:include => :photos)
  end
  
  def new
    @categories = Category.all
    @item = current_user.items.build
    @prime_photo = Photo.new
    @photo1 = Photo.new
    @photo2 = Photo.new
    @photo3 = Photo.new
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
