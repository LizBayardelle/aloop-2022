class AddShippingNametoOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :ship_to_name, :string
  end
end
