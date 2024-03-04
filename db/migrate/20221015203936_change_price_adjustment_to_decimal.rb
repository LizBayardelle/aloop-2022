class ChangePriceAdjustmentToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :variants, :price_adjustment, :decimal, precision: 8, scale: 2, default: 0
  end
end
