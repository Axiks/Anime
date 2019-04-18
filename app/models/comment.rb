class Comment < ApplicationRecord
	has_many :topic_comments
	has_many :topics, through: :topic_comments
end
