class ModifyProductFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :stripe_plan_name
    remove_column :products, :paypal_plan_name    
  end
end
