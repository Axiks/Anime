class Writing < ApplicationRecord
	has_many :topic_writings
	has_many :topics, through: :topic_writings

	def search(title)
	    ShikiAPI.search(title)
	end

	def searchDB(title)
		@data = Writing.where(Writing.arel_table[:name_en].matches(title))
		if(!@data.empty?)
			@data
		else
			search(title).each do |result|
				@anime = Writing.where(Writing.arel_table[:shikimoryId].matches(result['id']))
				if(@anime.empty?)
					@moreInfo = ShikiAPI.anime(result['id'])
					u = Writing.create :shikimoryId => result['id'], :my_anime_list_Id => @moreInfo['myanimelist_id'], :name_en => result['name'], :name_ru => @moreInfo['russian'], :description_ru => @moreInfo['description'], :series_count => result['episodes'], :name_jp => @moreInfo['japanese'][0], :genre =>  @moreInfo['genres'][0]['id'], :release_date => result['released_on'], :shikimory_img => result['image']['original']
				else
			end

		end
			#search(title)
			#@writing = Writing.new()
		end
	end

end