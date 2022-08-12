class AddFieldsToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :move_to_checkout, :boolean, default: false
    add_column :orders, :shipping_info, :boolean, default: false
    add_column :orders, :address_line_1, :string
    add_column :orders, :address_line_2, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :postal_code, :string
    add_column :orders, :country, :string
  end
end
