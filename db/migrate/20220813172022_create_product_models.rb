class CreateProductModels < ActiveRecord::Migration[7.0]
  def change
    create_table :product_models do |t|
      t.references :product, null: false, foreign_key: true
      t.references :bike_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
