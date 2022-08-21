class AddVisibilityToComponents < ActiveRecord::Migration[7.0]
  def change
    add_column :components, :active, :boolean, default: true
    add_column :variants, :active, :boolean, default: true
  end
end
