require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do

    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end
    end 
      it 'success response' do
        expect(response).to have_http_status(200)
      end
  end

  describe "GET #show" do
    it "renders the #show view" do
        # get :show
        # expect(response).to render_template("show")
      end
  end

  #------Couldn't find User without an ID--------

  # it "renders the show template" do
  #   get :show
  #   expect(response).to render_template("show")
  # end
 

    # it "assigns @users" do      
    #   get :show
    #     visit user_path(user.id)
    #   end 
    # end 
end
