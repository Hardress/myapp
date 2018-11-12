Rails.application.routes.draw do

  devise_for :users
  # landing page reroute
  resources :users
  resources :products do
  resources :comments
end
get 'simple_pages/about'
get 'simple_pages/contact'
get 'simple_pages/index'
get 'simple_pages/products'
get 'simple_pages/landing_page'
get 'simple_pages/thank_you'
  post 'simple_pages/thank_you'
root 'simple_pages#index'

resources :orders, only: [:index, :show]
end
