class AddFinalPriceToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :final_price, :decimal, :precision => 8, :scale => 2
  end
end
