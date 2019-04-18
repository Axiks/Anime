class TopicComment < ApplicationRecord
	belongs_to :topic
	belongs_to :comment
end
