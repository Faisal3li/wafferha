Rails.application.routes.draw do
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
