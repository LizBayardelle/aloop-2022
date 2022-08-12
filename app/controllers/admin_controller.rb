class AdminController < ApplicationController
  def products
    @products = Product.all
  end

  def users
    @users = User.all
  end

  def sales
    @orders = Order.all
  end
end
