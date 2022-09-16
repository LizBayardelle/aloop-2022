class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :kit
      t.boolean :approved, default: false
      t.text :comments

      t.timestamps
    end
  end
end
