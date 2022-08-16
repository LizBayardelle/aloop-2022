class Product < ApplicationRecord
	has_many_attached :photos
	
	has_many :product_categorizations
	has_many :product_categories, through: :product_categorizations

	has_many :product_models
	has_many :bike_models, through: :product_models

	has_many :orders
	has_many :order_items
	has_many :orders, through: :order_items


	def undertitle
		strings_array = []
		if self.subtitle && self.subtitle != ""
        	strings_array << self.subtitle
        end
        if self.years && self.years != ""
        	strings_array << "Fits " + self.years
        end
        if self.color && self.color != ""
        	strings_array << self.color
        end
        undertitle = strings_array.join(', ')
        undertitle
    end
    
end
