class AddProductSpecificsToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :meta_title, :string
    add_column :products, :meta_keywords, :string
    add_column :products, :height, :integer
    add_column :products, :width, :integer
    add_column :products, :depth, :integer
  end
end
