class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.references :component, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :price_adjustment

      t.timestamps
    end
  end
end
