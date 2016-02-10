class AddQuantityToStickers < ActiveRecord::Migration
  def change
    add_column :stickers, :quantity, :integer
  end
end
