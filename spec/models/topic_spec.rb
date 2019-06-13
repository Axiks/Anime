require 'rails_helper'

RSpec.describe Topic, type: :model do

    subject{
     build(:topic)
  }
  
  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end
  context "associations" do
    it {should have_many(:topic_writings)}
    it {should have_many(:writings)}

    it {should have_many(:topic_comments)}
    it {should have_many(:comments)}
  end

end
