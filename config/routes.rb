Rails.application.routes.draw do

  devise_for :users
  # landing page reroute
resources :products do
  resources :comments
end

resources :users
resources :products
resources :orders, only: [:index, :show, :create, :destroy]
get 'simple_pages/about'
get 'simple_pages/contact'
get 'simple_pages/index'
get 'simple_pages/products'
get 'simple_pages/landing_page'
get 'simple_pages/thank_you'
  post 'simple_pages/thank_you'
root 'simple_pages#index'
mount ActionCable.server => '/cable' 
end
