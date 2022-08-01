Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'
  
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :products
  resources :orders
  post :create_order, :to => 'orders#create_order'
  post :capture_order, :to => 'orders#capture_order'

end
