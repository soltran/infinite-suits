class FavoritesController < ApplicationController
  
  def create
    @fave = current_user.wishes.build(params[:favorite])
    if @fave.save
      render :json => { :success => true, :data => @fave}
    else
      render :json => @fave.to_json, :status => :unprocessable_entity
    end

  end
  
  def destroy
    @fave = current_user.wishes.where("item_id = ?", params[:favorite][:item_id]).first
    if @fave.destroy
      render :json => { :success => true, :data => @fave}
    else
      render :json => @fave.to_json, :status => :unprocessable_entity
    end
  end
  
end
