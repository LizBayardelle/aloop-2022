class AddCustomerEmailToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :customer_email, :string
  end
end
