require 'spec_helper'

describe "user_challenges/show" do
  before(:each) do
    @user_challenge = assign(:user_challenge, stub_model(UserChallenge))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
