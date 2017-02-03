class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.string :name
      t.decimal6 :price
      t.decimal2 :price

      t.timestamps null: false
    end
  end
end
