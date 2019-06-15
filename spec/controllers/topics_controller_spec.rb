require 'rails_helper'

RSpec.describe TopicsController, type: :controller do
  let!(:user) { build(:user, email: "test@gmail.com") }

  let!(:topic) {build(:topic, name: "Topic name", description: "Topic description")}

    describe "GET #index" do
        it "has a 200 status code" do
          get :index
          expect(response.status).to eq(200)
        end

        it "assigns @topics" do
          topic = Topic.create(name: "Test")
          get :index
          expect(assigns(:topics)).to eq([topic])
        end  
        
        it "renders the index template" do
          get :index
          expect(response).to render_template("index")
        end

    end
    describe "The #create action" do
        it "creates a new Item" do
          expect{
          # expect can be passed a block
            post :create
            topic = Topic.create(name: "Test", description: "Desc")
            # here, you would need an item factory using the FactoryGirl
            # gem. This assigns the item: instance the attributes for an
            # item.
           }.to change(Topic,:count).by(1)
           # The rest of the test says the item model should have one more
           # instance
        end
      end
  

end
