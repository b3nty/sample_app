require 'spec_helper'

describe "user_challenges/index" do
  before(:each) do
    assign(:user_challenges, [
      stub_model(UserChallenge),
      stub_model(UserChallenge)
    ])
  end

  it "renders a list of user_challenges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
