require 'rails_helper'

RSpec.describe "users/show", type: :view do
  let!(:user){create(:user)}

  before :each do
    @users = assign(:user, [User.create!(name: "User1", email: "email1@gmail.com"),
                            User.create!(name: "User2", email: "email2@gmail.com")])
   end

   it "should show a post title" do
    allow(view).to receive_messages(:will_paginate => nil)
    render
    expect(@users[0].name).to eq('User1')
    expect(rendered).to include 'User1' 
  end
end
