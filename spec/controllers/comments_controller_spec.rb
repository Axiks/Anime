require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  let!(:user) { build(:user, email: "test@gmail.com") }

   let!(:comment) {build(:comment, body: "Topic name")}

     describe "GET #index" do
        it "has a 200 status code" do
          get :index
          expect(response.status).to eq(200)
        end
      end
    #-----------------------------------
    # ActionController::UnknownFormat:
    #    CommentsController#index is missing a template for this request format and variant.
     
    #    request.formats: ["text/html"]
    #    request.variant: []
    #-----------------------------------

    # describe "GET index" do
    #     it "assigns @comments" do
    #       comment = Comment.create
    #       get :index
    #       expect(assigns(:comments)).to eq([comment])
    #     end
    
        
    #   end
    #   describe "GET index" do
    #     it "has a 200 status code" do
    #       get :index
    #       expect(response.status).to eq(200)
    #     end
    #   end

    describe "responds to" do
        it "responds to html by default" do
          post :create, { :comment => { :body => "Any Comment" } }
          expect(response.content_type).to eq "new/html"
        end

    end
end
