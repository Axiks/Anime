class Topic < ApplicationRecord
	has_many :topic_writings
	has_many :writings, through: :topic_writings

	has_many :topic_comments
	has_many :comments, through: :topic_comments

	def comments_count(id)
	    Topic.find(id).comments.count
	end
end
