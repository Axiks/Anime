class Image < ApplicationRecord
	   has_many_attached :image
	def add_img(img_path, user_id)
	    @db = Image.create :user_id => user_id, :path => img_path
	end
end
