Rails.application.routes.draw do
  root "pages#home"
  #root "offers#index"
  devise_for :users
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  get "/offers/:id/new", to: "offers#new"
<<<<<<< HEAD

  get "/search", to: "companies#search", as: "search_page"
=======
  get "/companies/:id/offers/new", to: "offers#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 3168ed4757881257ace6b2f63b1508cae45b144d
end
