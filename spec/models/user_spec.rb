require 'rails_helper'

RSpec.describe User, type: :model do
  subject{
    build(:user)
  }

  describe "validation" do
    it "is valid with valid attributes" do
     expect(subject).to be_valid
    end
  end

  describe 'upload avatar' do
  subject { create(:user).avatar }

  it { is_expected.to be_an_instance_of(ActiveStorage::Attached::One) }
end

end
