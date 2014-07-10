require 'spec_helper'

describe "user_challenges/edit" do
  before(:each) do
    @user_challenge = assign(:user_challenge, stub_model(UserChallenge))
  end

  it "renders the edit user_challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_challenge_path(@user_challenge), "post" do
    end
  end
end
