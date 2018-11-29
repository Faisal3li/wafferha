Rails.application.routes.draw do
  root "pages#home"
  #root "offers#index"
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  get "/offers/:id/new", to: "offers#new"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
