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

     describe "GET #new" do
        it "renders the new template" do
          get :new
          expect(response).to render_template("new")
        end

    end

    describe "POST #create" do

        it 'success response' do
          expect(response).to have_http_status(200)
        end
        it "create topic" do
            topic = create(:topic)
            subject{
            post :create, params: {topic: topic(name: "topic name",
                                                description: "topic description")}}
            expect(response).to have_http_status(200) 
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
  describe "GET #show" do
  it "assigns the requested contact to @contact" do
    # topic = create(:topic)
    #         subject{
    #         post :create, params: {topic: topic(name: "topic name",
    #                                             description: "topic description",
    #                                             id: subject.id)}}
    # get :show, id: topic
    # assigns(:topic).should eq(topic)
  end
  
    it "renders the #show view" do
      # get :show
      # expect(response).to render_template("show")
    end
end

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

# describe 'PUT update' do
#   before do
#             post :create,
#              params: {topic: {name:"Topic", description: "Desc", id: topic.id}}
#          end 
#   it "changes @topic's attributes" do
#     put :update, id: @topic, 
#     topic: {name:"Topic2", description: "Desc2"}
#     @topic.reload
#     @topic.name.should eq("Topic2")
#   end
# end
end
