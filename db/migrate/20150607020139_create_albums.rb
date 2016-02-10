class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :sticker_number
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
