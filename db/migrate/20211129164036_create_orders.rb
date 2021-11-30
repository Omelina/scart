class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer, :id
      t.integer, :orderNumber
      t.integer, :user_id
      t.date, :date
      t.decimal, :total
      t.boolean :active, default: true

      t.timestamps
    end
    add_index :orders, :orderNumber, unique: true
  end
end
