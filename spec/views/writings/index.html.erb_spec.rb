require 'rails_helper'

RSpec.describe "writings/index", type: :view do
  before :each do
    @writing = assign(:writing, [ Writing.create!(name_ua: "Name ua"),
                                  Writing.create!(name_ua: "Name ua2")])
  end

  it "should show a writing name" do
    # render
    # expect(@writings[0].name_ua).to eq('Name ua')
    # expect(rendered).to include 'Name ua' 
  end

end
