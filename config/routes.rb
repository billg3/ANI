Rails.application.routes.draw do
  resources :logins
  resources :reviews
  resources :animes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
