class AddNullTrueToOrders < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :user_id, :integer, null: true
  end
end

