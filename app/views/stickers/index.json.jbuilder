json.array!(@stickers) do |sticker|
  json.extract! sticker, :id, :title, :description, :image, :number, :album_id
  json.url sticker_url(sticker, format: :json)
end
