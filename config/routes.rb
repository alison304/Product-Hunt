Rails.application.routes.draw do
  devise_for :users
  
  # get 'products', to:'products#index'
  # get 'products/new', to:'products#new', as: 'new_products'
  # get 'products/:id', to:'products#show', as: :product
  # get 'products/:id/edit', to:'products#edit', as: :edit_product

  # patch 'products/:id', to:'products#update'

  # post 'products', to: 'products#create'
  resources :categories
  resources :products do
    get 'search', on: :collection  #genera la ruta products/search products#search
    resources :comments, only: [:create]
  end
  # root "home#index"
  root "main#welcome"
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")