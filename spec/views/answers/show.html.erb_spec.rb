require 'rails_helper'

RSpec.describe "answers/show", :type => :view do
  before(:each) do
    @answer = FactoryGirl.create(:answer)
  end

  it "renders attributes in <p>" do
    render
  end
end
