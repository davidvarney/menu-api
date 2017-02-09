class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name
      t.decimal :base_price, precision: 6, scale: 2
      t.decimal :combo_price, precision: 6, scale: 2

      t.timestamps null: false
    end
  end
end
