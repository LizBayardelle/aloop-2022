class Variant < ApplicationRecord
  has_many_attached :photos
  belongs_to :component
end
