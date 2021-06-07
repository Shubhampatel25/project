class Property < ApplicationRecord
	has_one_attached :photo

	def thumbnail
		return self.photo.variant(resize: '50x50').processed
	end	

	scope :latest, -> { order created_at: :desc } 
end
