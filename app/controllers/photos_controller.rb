class PhotosController < ApplicationController
  
  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      render :json => @photo.to_json
    else
      render :json => { :errors => @photo.errors.full_messages }
    end
    
  end
  
end
