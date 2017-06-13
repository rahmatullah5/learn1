Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  #get 'store/index'
  root 'store#index', as: 'store_index'
  resources :products
  get 'say/hello'

  get 'say/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
