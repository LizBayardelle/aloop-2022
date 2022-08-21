class AddDefaultValueToVariant < ActiveRecord::Migration[7.0]
  def change
    change_column :variants, :price_adjustment, :integer, default: 0
  end
end
