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
   # describe "The #create action" do
    #    it "creates a new Item" do
     #     expect{
      #      post :create,
       #     params: {topic: {name:"Topic", description: "Desc"}}
       #    }.to change(Topic,:count).by(1)
       #    
      #  end
     # end

#      describe 'PATCH #update' do
#   	before do
#         post :create,
#         params: {topic: {name:"Topic", description: "Desc"}}
#     end  
#     it "should update userparam and redirect to profile" do
#       patch :update, params: { name: "Topic2", description: "Tester2"}}
#       expect(subject.description).to eq("Tester2")
#       expect(response).to redirect_to profile_index_path
#     end
#   end
end
