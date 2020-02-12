class AddCustomerNumberToDatos < ActiveRecord::Migration[6.0]
  def change
    add_column :datos, :user_id, :integer
  end
end
