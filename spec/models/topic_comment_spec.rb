require 'rails_helper'

RSpec.describe TopicComment, type: :model do
  it {should belong_to(:topic)}

  it {should belong_to(:comment)}
end
