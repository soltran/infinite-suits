InfiniteShirts::Application.routes.draw do
  
  get "new_listing" => "items/new", :as => "new_listing"
  devise_for :users
  resources :items
  resources :photos
  

  root :to => "home#index"
  
end
