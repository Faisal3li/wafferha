Rails.application.routes.draw do
  root "pages#home"
  #root "offers#index"
  devise_for :users
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  get "/offers/:id/new", to: "offers#new"
  get "/companies/:id/offers/new", to: "offers#new"
  get "/category_search", to: "companies#index"
end
