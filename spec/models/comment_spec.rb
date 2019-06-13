require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "associations" do
    it {should have_many(:topic_comments)}

    it {should have_many(:topics)}
  end
end
