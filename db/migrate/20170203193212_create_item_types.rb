class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.string :name
      t.text :index_image
      t.text :thumbnail

      t.timestamps null: false
    end
  end
end
