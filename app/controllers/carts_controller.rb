class CartsController < ApplicationController

  
  def create
    @cart_item = current_user.carts.build(params[:cart])
    if @cart_item.save
      render :json => { :success => true, :data => @cart_item}
    else
      render :json => @cart_item.to_json, :status => :unprocessable_entity
    end
    
  end
  
  def destroy
    @cart_item = current_user.carts.where("item_id = ?", params[:cart][:item_id]).first
    if @cart_item.destroy
      respond_to do |format|
        format.html { redirect_to cart_url }
        format.json { render :json => { :success => true, :data => @cart_item} }
      end
    else
      render :json => @cart_item.to_json, :status => :unprocessable_entity
    end
  end
  
  def show
    @cart_items = current_user.cart_items
    
    render :show
  end
  
end
