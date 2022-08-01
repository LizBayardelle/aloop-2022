class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_cents
      t.string :stripe_plan_name
      t.string :paypal_plan_name
      t.text :description
      t.boolean :active, default: true

      t.timestamps
    end

  end
end
