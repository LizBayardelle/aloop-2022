Rails.application.routes.draw do
  resources :photos
  get 'home/index'
  root 'home#index'
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show]

  get 'admin/dashboard'
  get 'admin/users'
  get 'admin/sales'
  get 'admin/blog'
  get 'admin/products'

  resources :products
  resources :product_categories
  resources :variants
  resources :components
  
  resources :orders
  resources :order_items
  post "orders/:id/mark_order_paid" => "orders#mark_order_paid", as: "mark_order_paid"

  resources :bike_models
  resources :product_models

  resources :blogs
  resources :blog_subcategories

end
