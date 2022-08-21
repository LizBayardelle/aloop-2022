class AddFieldsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :specs, :text
    add_column :order_items, :notes, :text
    add_column :order_items, :total_price, :decimal, precision: 8, scale: 2

    change_column :orders, :price, :decimal, precision: 8, scale: 2
    change_column :orders, :price, :decimal, precision: 8, scale: 2
    remove_column :products, :price_cents
    add_column :products, :price, :decimal, precision: 8, scale: 2
    change_column :variants, :price_adjustment, :decimal, precision: 8, scale: 2
  end
end
