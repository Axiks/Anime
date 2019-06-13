require 'rails_helper'

RSpec.describe Writing, type: :model do

  subject{
    build(:writing)
  }

  context "associations" do
    it {should have_many(:topic_writings)}
    it {should have_many(:topics)}
  end

  describe 'upload avatar' do
    subject { create(:writing).avatar }
  
    it { is_expected.to be_an_instance_of(ActiveStorage::Attached::One) }
  end

end
