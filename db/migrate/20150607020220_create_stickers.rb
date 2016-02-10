class CreateStickers < ActiveRecord::Migration
  def change
    create_table :stickers do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :number
      t.integer :album_id

      t.timestamps null: false
    end
  end
end
