class HomeController < ApplicationController
  before_filter :authenticate_user!
    
  def index
    
    
  end
  
  def destroy
    current_user.session_token = nil
    current_user.save!
    session[session_token] = nil
    redirect_to root_url
    
  end
  
end
