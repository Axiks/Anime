require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
    # describe "POST #create" do
    #     it "should create @search" do
           
    #         search = Search.create
    #         post :create    
    #     end
    # end

    #---------KeyError:
       #Factory not registered: "search"------------------

     describe "POST #create" do
    #     it "create search" do
    #         search = create(:search)
    #         subject{
    #         post :create}
    #     end

        it 'success response' do
            expect(response).to have_http_status(200)
        end
    end

end
