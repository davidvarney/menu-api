class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :item_type, index: true, foreign_key: true
      t.string :name
      t.boolean :has_size
      t.decimal :price, precision: 6, scale: 2
      t.text :description
      t.integer :quantity
      t.text :index_image, null: true
      t.text :thumbnail, null: true

      t.timestamps null: false
    end
  end
end
