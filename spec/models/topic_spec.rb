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

end
