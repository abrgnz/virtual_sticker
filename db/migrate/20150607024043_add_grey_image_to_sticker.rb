class AddGreyImageToSticker < ActiveRecord::Migration
  def change
    add_column :stickers, :grey_image, :string
  end
end
