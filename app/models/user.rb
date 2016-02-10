class User < ActiveRecord::Base
	has_many :albums


	def get_album(album_id)
		album = Album.find_by_id(album_id)
		new_album = album.copy_album
		new_album.user_id = self.id
		new_album.save
	end

	def has_album?(album_id)
		return true if Album.where(user_id:self.id, father_id: album_id).count > 0
		return false
	end
end
