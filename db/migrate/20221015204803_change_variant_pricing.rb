class ChangeVariantPricing < ActiveRecord::Migration[7.0]
  def change
    rename_column :variants, :price_adjustment, :price
  end
end
