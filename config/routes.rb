InfiniteShirts::Application.routes.draw do
  
  get "new_listing" => "items/new", :as => "new_listing"
  get "gold/buy", to: 'gold#new', :as => :buy
  devise_for :users
  resources :items
  resources :photos
  resource :account, :only => [:edit, :update]
  resource :favorite, :only => [:create, :destroy]
  resource :cart, :only => [:create, :destroy, :show]
  resource :transaction, :only => [:create, :show]

  root :to => "home#index"
  
end
