class AddFatherIdToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :father_id, :integer
  end
end
