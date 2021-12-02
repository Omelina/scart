class ChangeLimit < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :orderNumber, :integer, limit: 8
  end
end
