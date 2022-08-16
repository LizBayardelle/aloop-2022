class AdminController < ApplicationController
  def products
    @products = Product.order("created_at ASC").all
  end

  def users
    @users = User.order("created_at ASC").all
  end

  def sales
    @orders = Order.order("created_at DESC").all
  end
end
