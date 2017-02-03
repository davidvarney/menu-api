class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.references :size, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
