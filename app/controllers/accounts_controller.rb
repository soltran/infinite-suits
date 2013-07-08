class AccountsController < ApplicationController
  
  def edit
    @user = current_user
    
  end
  
  def update
    @user = current_user
    if params[:photo][:id] != ""
      @photo = Photo.find(params[:photo][:id])
    end
    if @user.update_attributes(params[:user])
      @user.profile_pic = @photo unless @photo.nil?
      @user.save!
      redirect_to root_url
    else
      render :edit
    end
  end
  
end
