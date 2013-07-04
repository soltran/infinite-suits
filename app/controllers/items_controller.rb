class ItemsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @items = Item.all
    @photo = Photo.new
    
    render :json => @items.to_json(:include => :photos)
  end
  
  def new
    @categories = Category.all
    @item = current_user.items.build
    3.times { @item.photos.build }
    @photos = Photo.all
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
