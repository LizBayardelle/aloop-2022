class MoveProductNumbers < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :sku
    remove_column :products, :vendor
    remove_column :products, :vendor_parts_number
    add_column :variants, :sku, :string
    add_column :variants, :vendor, :string
    add_column :variants, :vendor_parts_number, :string
  end
end
