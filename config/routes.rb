InfiniteShirts::Application.routes.draw do
  
  get "new_listing" => "items/new", :as => "new_listing"
  devise_for :users
  resources :items
  resources :photos
  resource :account, :only => [:edit, :update]
  

  root :to => "home#index"
  
end
