class Property < ApplicationRecord
	has_one_attached :photo

	def thumbnail
		return self.photo.variant(resize: '200x200')
	end	

end
