class AddSubtitleToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :subtitle, :string
    add_column :products, :years, :string
    add_column :products, :color, :string
  end
end
