Rails.application.routes.draw do
  resources :items
  resources :categories
  resources :carts
  resources :cart_items
  resources :users, only: [:create]

  get '/me', to: 'users#show'
  post '/login', to: 'sessions#create' 
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
