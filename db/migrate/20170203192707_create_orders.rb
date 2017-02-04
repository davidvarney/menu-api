class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
