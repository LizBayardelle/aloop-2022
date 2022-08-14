class Product < ApplicationRecord
	has_many_attached :photos
	
	has_many :product_categorizations
	has_many :product_categories, through: :product_categorizations

	has_many :product_models
	has_many :bike_models, through: :product_models

	has_many :orders
	has_many :order_items
	has_many :orders, through: :order_items
end
