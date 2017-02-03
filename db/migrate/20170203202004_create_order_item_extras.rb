class CreateOrderItemExtras < ActiveRecord::Migration
  def change
    create_table :order_item_extras do |t|
      t.references :extra, index: true, foreign_key: true
      t.references :order_item, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
