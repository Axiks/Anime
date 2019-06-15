require 'rails_helper'

RSpec.describe Relation, type: :model do
  
  it {should belong_to(:topic)}

  it {should belong_to(:writing)}
end
