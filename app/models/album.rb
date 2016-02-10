class Album < ActiveRecord::Base
	has_many :stickers
	belongs_to :user

	accepts_nested_attributes_for :stickers


	def copy_album
		new_album = self.dup
		new_album.father_id = self.id
		self.stickers.each do |sticker|
			new_album.stickers << sticker.dup
		end
		new_album
	end

	def get_prime
		prime_album = find_by_father_id(self.father_id)
	end

	def get_random_sticker(number)
		new_sticker = Sticker.where(album_id:self.id, number: number).first
		new_sticker
	end
end
