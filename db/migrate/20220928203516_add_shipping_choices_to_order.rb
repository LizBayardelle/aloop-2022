class AddShippingChoicesToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :shipping_chosen, :boolean, default: false
    add_column :orders, :shipping_choice, :string
    add_column :orders, :shipping_choice_img, :string
    add_column :orders, :shipping_price, :decimal, :precision => 8, :scale => 2
  end
end
