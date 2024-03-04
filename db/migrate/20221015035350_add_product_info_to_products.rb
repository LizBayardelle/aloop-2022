class AddProductInfoToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :sku, :string
    add_column :products, :vendor, :string
    add_column :products, :vendor_parts_number, :string
    add_column :products, :size, :string
    add_column :products, :application_notes, :string
  end
end
