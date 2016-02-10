json.array!(@albums) do |album|
  json.extract! album, :id, :title, :sticker_number, :image, :description
  json.url album_url(album, format: :json)
end
