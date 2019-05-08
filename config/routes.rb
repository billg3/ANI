Rails.application.routes.draw do
  root'home#index'
  resources :logins
  resources :reviews
  resources :animes
  resources :home, only: [:index, :show ]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
