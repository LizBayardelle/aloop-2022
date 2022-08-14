class ProductModel < ApplicationRecord
  belongs_to :product
  belongs_to :bike_model
end
