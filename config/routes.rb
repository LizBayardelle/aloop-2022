Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'admin/products'
  get 'admin/users'
  get 'admin/sales'

  resources :products
  resources :product_categories
  resources :orders
  resources :order_items

  post "orders/:id/mark_order_paid" => "orders#mark_order_paid", as: "mark_order_paid"

end
