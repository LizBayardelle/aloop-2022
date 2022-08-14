class CreateBikeModels < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
