class Property < ApplicationRecord
	has_one_attached :photo

	def thumbnail
		return self.photo.variant(resize: '1200x300!').processed
	end	

end
