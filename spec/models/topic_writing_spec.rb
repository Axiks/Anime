require 'rails_helper'

RSpec.describe TopicWriting, type: :model do
  
  it {should belong_to(:topic)}

  it {should belong_to(:writing)}
end
