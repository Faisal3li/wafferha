Rails.application.routes.draw do
<<<<<<< HEAD
=======
   root "pages#home"
  #root "offers#index"
>>>>>>> 06b096bd51b745c65f5fc181ba54183113e1ebba
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
