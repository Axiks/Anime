class Writing < ApplicationRecord
	def search(title)
	    ShikiAPI.search(title)
	end
	def searchDB(title)
		Writing.where(name_en: title)
	end
end
