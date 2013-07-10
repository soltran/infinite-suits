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
      render :json => { :success => true, :data => @cart_item}
    else
      render :json => @cart_item.to_json, :status => :unprocessable_entity
    end
  end
  
end
