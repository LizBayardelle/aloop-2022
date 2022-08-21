class RemoveFieldsFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :years
    remove_column :products, :color    
  end
end
