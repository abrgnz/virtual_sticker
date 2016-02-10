# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sticker.all.destroy_all
10.times do |i|
	Sticker.create(album_id: 9, title: "#{i} Titulo", description: "Una Carta mas en el album", image: "https://dl.dropboxusercontent.com/u/80794/HS/#{i}.png", number: i+1, quantity: 0)
end