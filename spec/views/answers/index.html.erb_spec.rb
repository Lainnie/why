require 'rails_helper'

RSpec.describe "answers/index", :type => :view do
  before(:each) do
    assign(:answers, [
      FactoryGirl.create(:answer),
      FactoryGirl.create(:answer)
    ])
  end

  it "renders a list of answers" do
    render
  end
end
