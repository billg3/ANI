Rails.application.routes.draw do
  root'home#index'
  resources :login, only: [:new, :create]
  delete "logout", to: "login#destroy", as: "log_out"
  resources :reviews
  resources :animes
  resources :home, only: [:index, :show ]
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
