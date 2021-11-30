class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer, :id
      t.integer, :order_id
      t.integer, :product_id
      t.decimal, :total
      t.integer :quantity

      t.timestamps
    end
  end
end
