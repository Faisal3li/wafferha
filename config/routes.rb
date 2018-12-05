Rails.application.routes.draw do
  resources :views
  get 'views/create'
  get 'places/show'
  root "offers#index"
  #root "offers#index"
  get "/coupons", to: "offers#coupon"
  devise_for :users
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  get "/offers/:id/new", to: "offers#new"
  get "/companies/:id/offers/new", to: "offers#new"
  get "/category_search", to: "companies#index"
end
