class AddDefaultsToOrder < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :ship_to_name, :string, default: ""
    change_column :orders, :ship_to_name, :string, default: ""
    change_column :orders, :customer_email, :string, default: ""
    change_column :orders, :address_line_1, :string, default: ""
    change_column :orders, :address_line_2, :string, default: ""
    change_column :orders, :city, :string, default: ""
    change_column :orders, :state, :string, default: ""
    change_column :orders, :postal_code, :string, default: ""
    change_column :orders, :country, :string, default: ""
    change_column :orders, :shipping_choice, :string, default: ""
    change_column :orders, :shipping_choice_img, :string, default: ""
    change_column :orders, :shipping_price, :string, default: ""
  end
end
