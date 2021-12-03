class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.decimal :price
      t.integer :quantity
      t.boolean :active, default: true

      t.timestamps
    end
    add_index :products, :code, unique: true
  end
end
