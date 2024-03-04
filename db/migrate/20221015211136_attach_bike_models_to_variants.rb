class AttachBikeModelsToVariants < ActiveRecord::Migration[7.0]
  def change
    drop_table :product_models
    create_table :variant_models do |t|
      t.references :variant, null: false, foreign_key: true
      t.references :bike_model, null: false, foreign_key: true

      t.timestamps
    end

  end
end
