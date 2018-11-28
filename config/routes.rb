Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'offers/index'
  get 'offers/show'
  get 'offers/edit'
  get 'offers/new'
  get 'categories/show'
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
