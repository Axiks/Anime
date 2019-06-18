require 'rails_helper'

RSpec.describe WritingsController, type: :controller do
    describe "GET #index" do
        it "has a 200 status code" do
          get :index
          expect(response.status).to eq(200)
        end

         it "assigns @writings" do
          writing = Writing.create(name_ua: "Test")
          get :index
          expect(assigns(:writings)).to eq([writing])
        end  

         it "renders the index template" do
          get :index
          expect(response).to render_template("index")
        end

     end

    describe "GET #new" do
        it "renders the new template" do
          get :new
          expect(response).to render_template("new")
        end

    end

    describe "POST #create" do
        
        it "create writing" do
            writing = create(:writing)
            subject{
            post :create}
        end
        it "should redirect to @writing" do
            # writing = create(:writing)
            # subject{
            # post :create}
            # expect(create).to redirect_to(writing.id)
        end
        it 'success response' do
            expect(response).to have_http_status(200)
        end
        
    end
end
