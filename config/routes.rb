Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  #Resourceful nested Routing
  resources :users, only: [:index, :show, :new,:create, :edit,:update, :destroy] do
    resources :microposts
  end

 root "users#index"
 
end
