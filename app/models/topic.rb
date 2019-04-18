class Topic < ApplicationRecord
	has_many :topic_writings
	has_many :writings, through: :topic_writings

  def anime(id)
  	#Use otnoshenya
    #@data = Relation.where(Relation.arel_table[:writing_id].matches(id))
    #@topics = Relation.where(Relation.arel_table[:writing_id].matches(id))
    #@result = @topics.Topic.all
  end

end
